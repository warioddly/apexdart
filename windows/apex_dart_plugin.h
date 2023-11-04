#ifndef FLUTTER_PLUGIN_APEX_DART_PLUGIN_H_
#define FLUTTER_PLUGIN_APEX_DART_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace apex_dart {

class ApexDartPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ApexDartPlugin();

  virtual ~ApexDartPlugin();

  // Disallow copy and assign.
  ApexDartPlugin(const ApexDartPlugin&) = delete;
  ApexDartPlugin& operator=(const ApexDartPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace apex_dart

#endif  // FLUTTER_PLUGIN_APEX_DART_PLUGIN_H_
