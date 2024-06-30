################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../X-CUBE-AI/App/app_x-cube-ai.c \
../X-CUBE-AI/App/mnist_nn.c \
../X-CUBE-AI/App/mnist_nn_data.c \
../X-CUBE-AI/App/mnist_nn_data_params.c 

OBJS += \
./X-CUBE-AI/App/app_x-cube-ai.o \
./X-CUBE-AI/App/mnist_nn.o \
./X-CUBE-AI/App/mnist_nn_data.o \
./X-CUBE-AI/App/mnist_nn_data_params.o 

C_DEPS += \
./X-CUBE-AI/App/app_x-cube-ai.d \
./X-CUBE-AI/App/mnist_nn.d \
./X-CUBE-AI/App/mnist_nn_data.d \
./X-CUBE-AI/App/mnist_nn_data_params.d 


# Each subdirectory must supply rules for building sources it contributes
X-CUBE-AI/App/%.o X-CUBE-AI/App/%.su X-CUBE-AI/App/%.cyclo: ../X-CUBE-AI/App/%.c X-CUBE-AI/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H750xx -c -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Utilities/Fonts" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/ft5336" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/mt25tl01g" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/mt48lc4m32b2" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/wm8994" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/Common" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Minesweeper -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Middlewares/ST/AI/Inc" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/X-CUBE-AI" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/X-CUBE-AI/App" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-X-2d-CUBE-2d-AI-2f-App

clean-X-2d-CUBE-2d-AI-2f-App:
	-$(RM) ./X-CUBE-AI/App/app_x-cube-ai.cyclo ./X-CUBE-AI/App/app_x-cube-ai.d ./X-CUBE-AI/App/app_x-cube-ai.o ./X-CUBE-AI/App/app_x-cube-ai.su ./X-CUBE-AI/App/mnist_nn.cyclo ./X-CUBE-AI/App/mnist_nn.d ./X-CUBE-AI/App/mnist_nn.o ./X-CUBE-AI/App/mnist_nn.su ./X-CUBE-AI/App/mnist_nn_data.cyclo ./X-CUBE-AI/App/mnist_nn_data.d ./X-CUBE-AI/App/mnist_nn_data.o ./X-CUBE-AI/App/mnist_nn_data.su ./X-CUBE-AI/App/mnist_nn_data_params.cyclo ./X-CUBE-AI/App/mnist_nn_data_params.d ./X-CUBE-AI/App/mnist_nn_data_params.o ./X-CUBE-AI/App/mnist_nn_data_params.su

.PHONY: clean-X-2d-CUBE-2d-AI-2f-App

