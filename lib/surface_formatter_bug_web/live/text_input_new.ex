defmodule SurfaceFormatterBugWeb.TextInputNew do
  alias Surface.Components.Form.TextInput
  use Surface.Component

  prop field, :atom

  prop type, :string,
    default: "text",
    values: [
      "date",
      "datetime-local",
      "email",
      "number",
      "password",
      "search",
      "tel",
      "text",
      "url",
      "time",
      "url"
    ]

  prop value, :string
  prop placeholder, :string
  prop error, :string
  prop rounded, :boolean
  prop disabled, :boolean
  prop required, :boolean
  prop left_icon, :string
  prop right_icon, :string
  prop class, :string
  prop on_focus, :event
  prop on_blur, :event

  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  @impl true
  def render(assigns) do
    ~F"""
    <TextInput
      class={
        "w-full h-12 max-w-full px-4 bg-black-100 hover:bg-black-120 text-base leading-normal
         text-color-bulma-100 box-border border border-solid border-yellow-100 rounded transition
         ease-in placeholder-cyan-100 placeholder-opacity-100 disabled:opacity-50
         disabled:cursor-not-allowed focus:border-red-100 focus:outline-none
         no-scrollbar invalid:shadow-none invalid:border-green-100 #{@class}",
        "pl-11": @left_icon,
        "pr-11": @right_icon,
        "border-green-100": @error
      }
      field={@field}
      opts={[
        placeholder: @placeholder,
        disabled: @disabled,
        required: @required
      ]}
      value={@value}
      focus={@on_focus}
      blur={@on_blur}
    />
    """
  end
end
