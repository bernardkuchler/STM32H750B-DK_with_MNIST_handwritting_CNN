################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/wm8994/wm8994.c \
../Drivers/BSP/Components/wm8994/wm8994_reg.c 

OBJS += \
./Drivers/BSP/Components/wm8994/wm8994.o \
./Drivers/BSP/Components/wm8994/wm8994_reg.o 

C_DEPS += \
./Drivers/BSP/Components/wm8994/wm8994.d \
./Drivers/BSP/Components/wm8994/wm8994_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/wm8994/%.o Drivers/BSP/Components/wm8994/%.su Drivers/BSP/Components/wm8994/%.cyclo: ../Drivers/BSP/Components/wm8994/%.c Drivers/BSP/Components/wm8994/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H750xx -c -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Utilities/Fonts" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP/Components/ft5336" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP/Components/mt25tl01g" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP/Components/mt48lc4m32b2" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP/Components/wm8994" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP/Components/Common" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Drivers/BSP/Components" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Minesweeper -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/Middlewares/ST/AI/Inc" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/X-CUBE-AI" -I"C:/Users/Adminj/Desktop/Tutorstvo-Projekti/Github/DisplayTutorial_STM32H750B-DK/DisplayTutorial/X-CUBE-AI/App" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components-2f-wm8994

clean-Drivers-2f-BSP-2f-Components-2f-wm8994:
	-$(RM) ./Drivers/BSP/Components/wm8994/wm8994.cyclo ./Drivers/BSP/Components/wm8994/wm8994.d ./Drivers/BSP/Components/wm8994/wm8994.o ./Drivers/BSP/Components/wm8994/wm8994.su ./Drivers/BSP/Components/wm8994/wm8994_reg.cyclo ./Drivers/BSP/Components/wm8994/wm8994_reg.d ./Drivers/BSP/Components/wm8994/wm8994_reg.o ./Drivers/BSP/Components/wm8994/wm8994_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-wm8994

