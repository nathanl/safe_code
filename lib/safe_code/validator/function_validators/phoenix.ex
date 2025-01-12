defmodule SafeCode.Validator.FunctionValidators.Phoenix do
  @behaviour SafeCode.Validator.FunctionValidators.Behaviour

  def safe_function?(_), do: false

  def safe_module_function?(Phoenix.LiveView.Engine, :live_to_iodata), do: true
  def safe_module_function?(Phoenix.LiveView.Engine, :changed_assign?), do: true
  def safe_module_function?(Phoenix.LiveView.Engine, :fetch_assign!), do: true

  def safe_module_function?(_, _), do: false
end
