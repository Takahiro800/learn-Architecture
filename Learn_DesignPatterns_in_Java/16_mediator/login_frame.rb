# frozen_string_literal: true

# java.awt.Frame(GUIアプリ作成のためのクラス)のサブクラスを想定

class LoginFrame < Mediator
  def initialize(title)
    super(title)

    # 背景色の設定
    set_background(Color.lightGray)

    # レイアウトマネージャを使って4*2のグリッドを作る
    set_layout(GridLayout.new(4,2))

    # Colleagueたちを生成する
    create_colleagues

    # 配置する
    add(check_guest)
    add(check_Login)
    add(Label.new("Username"))
    add(text_user)
    add(Label.new("Password"))
    add(text_pass)
    add(button_ok)
    add(button_cancel)

    # 有効/無効の初期設定をする
    collegue_changed

    # 表示する
    pack
    set_visible(true)
  end

  def create_colleagues
    # check box
    g = CheckboxGroup.new
    check_guest = ColleagueCheckbox.new("Guest", g, true)
    check_login = ColleagueCheckbox.new("Login", g , false)

    # TextField
    text_user = ColleagueTextField.new("", 10)
    text_pass = ColleagueTextField.new("", 10)
    text_pass.setEchoChar('*')

    # Button
    button_ok = ColleagueButton.new("OK")
    button_cancel = ColleagueButton.new("Cancel")

    # Mediatorを設定する
    check_guest.set_mediator(self)
    check_login.set_mediator(self)
    text_user.set_mediator(self)
    text_pass.set_mediator(self)
    button_ok.set_mediator(self)
    button_cancel.set_mediator(self)

    # Listenerのセット
    check_guest.addItemListener(check_guest)
    check_login.addItemListener(check_login)
    text_user.addTextListener(text_user)
    text_pass.addTextListener(text_pass)
    button_ok.addActionListener(self)
    button_cancel.addActionListener(self)
  end

  # Colleagueの状態が変化した時に呼ばれる
  def colleague_changed
    if check_guest.get_state
      # ゲストログイン
      text_user.set_colleague_enabled(false)
      text_pass.set_colleague_enabled(false)
      button_ok.set_colleague_enabled(true)
    else
      # ユーザーログイン
      text_user.set_colleague_enabled(true)
      userpass_changed
    end
  end

  def userpass_changed
    if text_user.get_text.length > 0
      text_pass.setncolleague_enabled(true)

      if text_pass.get_text.length > 0
        button_ok.set_colleague_enabled(ture)
      else
        button_ok.set_colleague_enabled(false)
      end
    else
      text_pass.set_colleague_enabled(false)
      button_ok.set_colleague_enabled(false)
    end
  end

  def action_performed(event)
    puts event
  end
end
