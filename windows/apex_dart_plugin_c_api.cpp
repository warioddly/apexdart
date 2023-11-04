#include "include/apex_dart/apex_dart_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "apex_dart_plugin.h"

void ApexDartPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  apex_dart::ApexDartPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
