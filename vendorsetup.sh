# Clone/Fetch Upstream Device Dependencies

echo -e "\033[33mDeseja clonar as dependências necessárias? samsung, hals e ih8sn? (s/n)\033[0m"
read resposta

if [ "$resposta" = "s" ]; then
echo -e "\033[32mInicializando...\033[0m"
git clone https://github.com/LineageOS/android_hardware_samsung -b lineage-18.1 hardware/samsung 
rm -rf packages/resources/devicesettings 
git clone https://github.com/LineageOS/android_packages_resources_devicesettings -b lineage-18.1 packages/resources/devicesettings
rm -rf hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display 
git clone https://github.com/LineageOS/android_hardware_qcom_media --single-branch -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/media 
git clone https://github.com/LineageOS/android_hardware_qcom_audio --single-branch -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/audio 
git clone https://github.com/LineageOS/android_hardware_qcom_display --single-branch -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/display
./ih8sn/patches/eleven/patch.sh
echo -e "\033[32m Tudo no seu devido lugar, Boa compilação!!\033[0m"
else
echo -e "\033[31mAs dependências foram puladas!!\033[0m"
fi
