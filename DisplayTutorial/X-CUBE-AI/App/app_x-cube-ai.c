
/**
  ******************************************************************************
  * @file    app_x-cube-ai.c
  * @author  X-CUBE-AI C code generator
  * @brief   AI program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

 /*
  * Description
  *   v1.0 - Minimum template to show how to use the Embedded Client API
  *          model. Only one input and one output is supported. All
  *          memory resources are allocated statically (AI_NETWORK_XX, defines
  *          are used).
  *          Re-target of the printf function is out-of-scope.
  *   v2.0 - add multiple IO and/or multiple heap support
  *
  *   For more information, see the embeded documentation:
  *
  *       [1] %X_CUBE_AI_DIR%/Documentation/index.html
  *
  *   X_CUBE_AI_DIR indicates the location where the X-CUBE-AI pack is installed
  *   typical : C:\Users\<user_name>\STM32Cube\Repository\STMicroelectronics\X-CUBE-AI\7.1.0
  */

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

#if defined ( __ICCARM__ )
#elif defined ( __CC_ARM ) || ( __GNUC__ )
#endif

/* System headers */
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>
#include <string.h>

#include "app_x-cube-ai.h"
#include "main.h"
#include "ai_datatypes_defines.h"
#include "mnist_nn.h"
#include "mnist_nn_data.h"

/* USER CODE BEGIN includes */
/* USER CODE END includes */

/* IO buffers ----------------------------------------------------------------*/

#if !defined(AI_MNIST_NN_INPUTS_IN_ACTIVATIONS)
AI_ALIGNED(4) ai_i8 data_in_1[AI_MNIST_NN_IN_1_SIZE_BYTES];
ai_i8* data_ins[AI_MNIST_NN_IN_NUM] = {
data_in_1
};
#else
ai_float* data_ins[AI_MNIST_NN_IN_NUM] = {//ai_i8* data_ins[AI_MNIST_NN_IN_NUM] = {
NULL
};
#endif

#if !defined(AI_MNIST_NN_OUTPUTS_IN_ACTIVATIONS)
AI_ALIGNED(4) ai_i8 data_out_1[AI_MNIST_NN_OUT_1_SIZE_BYTES];
ai_i8* data_outs[AI_MNIST_NN_OUT_NUM] = {
data_out_1
};
#else
ai_i8* data_outs[AI_MNIST_NN_OUT_NUM] = {
NULL
};
#endif

/* Activations buffers -------------------------------------------------------*/

AI_ALIGNED(32)
static uint8_t pool0[AI_MNIST_NN_DATA_ACTIVATION_1_SIZE];

ai_handle data_activations0[] = {pool0};

/* AI objects ----------------------------------------------------------------*/

static ai_handle mnist_nn = AI_HANDLE_NULL;

static ai_buffer* ai_input;
static ai_buffer* ai_output;

static void ai_log_err(const ai_error err, const char *fct)
{
  /* USER CODE BEGIN log */
  if (fct)
    printf("TEMPLATE - Error (%s) - type=0x%02x code=0x%02x\r\n", fct,
        err.type, err.code);
  else
    printf("TEMPLATE - Error - type=0x%02x code=0x%02x\r\n", err.type, err.code);

  do {} while (1);
  /* USER CODE END log */
}

static int ai_boostrap(ai_handle *act_addr)
{
  ai_error err;

  /* Create and initialize an instance of the model */
  err = ai_mnist_nn_create_and_init(&mnist_nn, act_addr, NULL);
  if (err.type != AI_ERROR_NONE) {
    ai_log_err(err, "ai_mnist_nn_create_and_init");
    return -1;
  }

  ai_input = ai_mnist_nn_inputs_get(mnist_nn, NULL);
  ai_output = ai_mnist_nn_outputs_get(mnist_nn, NULL);

#if defined(AI_MNIST_NN_INPUTS_IN_ACTIVATIONS)
  /*  In the case where "--allocate-inputs" option is used, memory buffer can be
   *  used from the activations buffer. This is not mandatory.
   */
  for (int idx=0; idx < AI_MNIST_NN_IN_NUM; idx++) {
	data_ins[idx] = ai_input[idx].data;
  }
#else
  for (int idx=0; idx < AI_MNIST_NN_IN_NUM; idx++) {
	  ai_input[idx].data = data_ins[idx];
  }
#endif

#if defined(AI_MNIST_NN_OUTPUTS_IN_ACTIVATIONS)
  /*  In the case where "--allocate-outputs" option is used, memory buffer can be
   *  used from the activations buffer. This is no mandatory.
   */
  for (int idx=0; idx < AI_MNIST_NN_OUT_NUM; idx++) {
	data_outs[idx] = ai_output[idx].data;
  }
#else
  for (int idx=0; idx < AI_MNIST_NN_OUT_NUM; idx++) {
	ai_output[idx].data = data_outs[idx];
  }
#endif

  return 0;
}

static int ai_run(void)
{
  ai_i32 batch;

  batch = ai_mnist_nn_run(mnist_nn, ai_input, ai_output);
  if (batch != 1) {
    ai_log_err(ai_mnist_nn_get_error(mnist_nn),
        "ai_mnist_nn_run");
    return -1;
  }

  return 0;
}

/* USER CODE BEGIN 2 */
int acquire_and_process_data(ai_i8* data[])
{
  /* fill the inputs of the c-model
  for (int idx=0; idx < AI_MNIST_NN_IN_NUM; idx++ )
  {
      data[idx] = ....
  }

  */
  return 0;
}

int post_process(ai_i8* data[])
{
  /* process the predictions
  for (int idx=0; idx < AI_MNIST_NN_OUT_NUM; idx++ )
  {
      data[idx] = ....
  }

  */
  return 0;
}
/* USER CODE END 2 */

/* Entry points --------------------------------------------------------------*/

void MX_X_CUBE_AI_Init(void)
{
    BSP_QSPI_Init_t qspiInit;
    qspiInit.InterfaceMode=MT25TL01G_QPI_MODE;
    qspiInit.TransferRate= MT25TL01G_DTR_TRANSFER ;
    qspiInit.DualFlashMode= MT25TL01G_DUALFLASH_ENABLE;
    BSP_QSPI_Init(0,&qspiInit);
    BSP_QSPI_EnableMemoryMappedMode(0);
    /* USER CODE BEGIN 5 */
  printf("\r\nTEMPLATE - initialization\r\n");

  ai_boostrap(data_activations0);
    /* USER CODE END 5 */
}

void MX_X_CUBE_AI_Process(ai_float * nn_input_data, ai_float * nn_output_data) //MX_X_CUBE_AI_Process(void)
{
    /* USER CODE BEGIN 6 */
	/*
  int res = -1;

  printf("TEMPLATE - run - main loop\r\n");

  if (mnist_nn) {

    do {
      // 1 - acquire and pre-process input data /
      res = acquire_and_process_data(data_ins);
      // 2 - process the data - call inference engine /
      if (res == 0)
        res = ai_run();
      // 3- post-process the predictions /
      if (res == 0)
        res = post_process(data_outs);
    } while (res==0);
  }

  if (res) {
    ai_error err = {AI_ERROR_INVALID_STATE, AI_ERROR_CODE_NETWORK};
    ai_log_err(err, "Process has FAILED");
  }
  */

	/*
	ai_float nn_input_data_TEST[1][AI_MNIST_NN_IN_1_HEIGHT][AI_MNIST_NN_IN_1_WIDTH][AI_MNIST_NN_IN_1_CHANNEL];
	for (int i = 0; i < AI_MNIST_NN_IN_1_HEIGHT; i++) {
		for (int j = 0; j < AI_MNIST_NN_IN_1_WIDTH; j++) {
			nn_input_data_TEST[0][i][j][0] = *(nn_input_data + i * AI_MNIST_NN_IN_1_WIDTH + j); //nn_input_data[i][j];
		}
	}
	*/

	ai_input[0].data = AI_HANDLE_PTR(nn_input_data);
	ai_output[0].data = AI_HANDLE_PTR(nn_output_data);
	///////////////////////////////////memcpy(data_ins[0], nn_input_data, AI_MNIST_NN_IN_1_HEIGHT * AI_MNIST_NN_IN_1_WIDTH * sizeof(ai_float));
	/*
	for (int idx=0; idx < AI_MNIST_NN_IN_NUM; idx++ )
	{
		for (int i = 0; i < AI_MNIST_NN_IN_1_HEIGHT; i++) {
				for (int j = 0; j < AI_MNIST_NN_IN_1_WIDTH; j++) {
					//data_ins[idx][i][j][0] = *(nn_input_data + i * AI_MNIST_NN_IN_1_WIDTH + j);
				}
			}
	}*/
	//data_ins[0] = nn_input_data_TEST;



	ai_run();

	//nn_output_data = data_outs[0];
	/*
			for (int j = 0; j < 10; j++) {
				*(nn_output_data + j) = data_outs[0][j]; //nn_input_data[i][j];
			}
			*/

	///////////////////////////////////memcpy(nn_output_data, data_outs[0], 10 * sizeof(ai_float));



    /* USER CODE END 6 */
}
#ifdef __cplusplus
}
#endif
