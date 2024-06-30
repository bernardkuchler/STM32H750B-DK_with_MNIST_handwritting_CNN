################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.o Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.su Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.c Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H750xx -c -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Utilities/Fonts" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/ft5336" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/mt25tl01g" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/mt48lc4m32b2" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/wm8994" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components/Common" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Drivers/BSP/Components" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Minesweeper -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/Middlewares/ST/AI/Inc" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/X-CUBE-AI" -I"C:/Users/Kuchler/OneDrive/Namizje/Github-Tutorstvo-Keras/STM32H750B-DK_with_MNIST_handwritting_CNN/DisplayTutorial/X-CUBE-AI/App" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o ./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

