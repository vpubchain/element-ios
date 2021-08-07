// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Images {
    internal static let socialLoginButtonApple = ImageAsset(name: "social_login_button_apple")
    internal static let socialLoginButtonFacebook = ImageAsset(name: "social_login_button_facebook")
    internal static let socialLoginButtonGithub = ImageAsset(name: "social_login_button_github")
    internal static let socialLoginButtonGitlab = ImageAsset(name: "social_login_button_gitlab")
    internal static let socialLoginButtonGoogle = ImageAsset(name: "social_login_button_google")
    internal static let socialLoginButtonTwitter = ImageAsset(name: "social_login_button_twitter")
    internal static let callAudioMuteOffIcon = ImageAsset(name: "call_audio_mute_off_icon")
    internal static let callAudioMuteOnIcon = ImageAsset(name: "call_audio_mute_on_icon")
    internal static let callAudioRouteBuiltin = ImageAsset(name: "call_audio_route_builtin")
    internal static let callAudioRouteHeadphones = ImageAsset(name: "call_audio_route_headphones")
    internal static let callAudioRouteSpeakers = ImageAsset(name: "call_audio_route_speakers")
    internal static let callChatIcon = ImageAsset(name: "call_chat_icon")
    internal static let callDialpadBackspaceIcon = ImageAsset(name: "call_dialpad_backspace_icon")
    internal static let callDialpadCallIcon = ImageAsset(name: "call_dialpad_call_icon")
    internal static let callGoToChatIcon = ImageAsset(name: "call_go_to_chat_icon")
    internal static let callHangupLarge = ImageAsset(name: "call_hangup_large")
    internal static let callMissedVideo = ImageAsset(name: "call_missed_video")
    internal static let callMissedVoice = ImageAsset(name: "call_missed_voice")
    internal static let callMoreIcon = ImageAsset(name: "call_more_icon")
    internal static let callPausedIcon = ImageAsset(name: "call_paused_icon")
    internal static let callPausedWhiteIcon = ImageAsset(name: "call_paused_white_icon")
    internal static let callPipIcon = ImageAsset(name: "call_pip_icon")
    internal static let callSpeakerExternalIcon = ImageAsset(name: "call_speaker_external_icon")
    internal static let callSpeakerOffIcon = ImageAsset(name: "call_speaker_off_icon")
    internal static let callSpeakerOnIcon = ImageAsset(name: "call_speaker_on_icon")
    internal static let callVideoIcon = ImageAsset(name: "call_video_icon")
    internal static let callVideoMuteOffIcon = ImageAsset(name: "call_video_mute_off_icon")
    internal static let callVideoMuteOnIcon = ImageAsset(name: "call_video_mute_on_icon")
    internal static let callkitIcon = ImageAsset(name: "callkit_icon")
    internal static let cameraSwitch = ImageAsset(name: "camera_switch")
    internal static let appSymbol = ImageAsset(name: "app_symbol")
    internal static let backIcon = ImageAsset(name: "back_icon")
    internal static let camera = ImageAsset(name: "camera")
    internal static let checkmark = ImageAsset(name: "checkmark")
    internal static let chevron = ImageAsset(name: "chevron")
    internal static let closeButton = ImageAsset(name: "close_button")
    internal static let disclosureIcon = ImageAsset(name: "disclosure_icon")
    internal static let errorIcon = ImageAsset(name: "error_icon")
    internal static let faceidIcon = ImageAsset(name: "faceid_icon")
    internal static let group = ImageAsset(name: "group")
    internal static let monitor = ImageAsset(name: "monitor")
    internal static let placeholder = ImageAsset(name: "placeholder")
    internal static let plusIcon = ImageAsset(name: "plus_icon")
    internal static let removeIcon = ImageAsset(name: "remove_icon")
    internal static let revealPasswordButton = ImageAsset(name: "reveal_password_button")
    internal static let selectionTick = ImageAsset(name: "selection_tick")
    internal static let selectionUntick = ImageAsset(name: "selection_untick")
    internal static let shareActionButton = ImageAsset(name: "share_action_button")
    internal static let shrinkIcon = ImageAsset(name: "shrink_icon")
    internal static let smartphone = ImageAsset(name: "smartphone")
    internal static let startChat = ImageAsset(name: "start_chat")
    internal static let touchidIcon = ImageAsset(name: "touchid_icon")
    internal static let addGroupParticipant = ImageAsset(name: "add_group_participant")
    internal static let removeIconBlue = ImageAsset(name: "remove_icon_blue")
    internal static let captureAvatar = ImageAsset(name: "capture_avatar")
    internal static let e2eBlocked = ImageAsset(name: "e2e_blocked")
    internal static let e2eUnencrypted = ImageAsset(name: "e2e_unencrypted")
    internal static let e2eWarning = ImageAsset(name: "e2e_warning")
    internal static let encryptionNormal = ImageAsset(name: "encryption_normal")
    internal static let encryptionTrusted = ImageAsset(name: "encryption_trusted")
    internal static let encryptionWarning = ImageAsset(name: "encryption_warning")
    internal static let favouritesEmptyScreenArtwork = ImageAsset(name: "favourites_empty_screen_artwork")
    internal static let favouritesEmptyScreenArtworkDark = ImageAsset(name: "favourites_empty_screen_artwork_dark")
    internal static let roomActionDirectChat = ImageAsset(name: "room_action_direct_chat")
    internal static let roomActionFavourite = ImageAsset(name: "room_action_favourite")
    internal static let roomActionLeave = ImageAsset(name: "room_action_leave")
    internal static let roomActionNotification = ImageAsset(name: "room_action_notification")
    internal static let roomActionNotificationMuted = ImageAsset(name: "room_action_notification_muted")
    internal static let roomActionPriorityHigh = ImageAsset(name: "room_action_priority_high")
    internal static let roomActionPriorityLow = ImageAsset(name: "room_action_priority_low")
    internal static let homeEmptyScreenArtwork = ImageAsset(name: "home_empty_screen_artwork")
    internal static let homeEmptyScreenArtworkDark = ImageAsset(name: "home_empty_screen_artwork_dark")
    internal static let plusFloatingAction = ImageAsset(name: "plus_floating_action")
    internal static let closeBanner = ImageAsset(name: "close_banner")
    internal static let importFilesButton = ImageAsset(name: "import_files_button")
    internal static let keyBackupLogo = ImageAsset(name: "key_backup_logo")
    internal static let keyVerificationSuccessShield = ImageAsset(name: "key_verification_success_shield")
    internal static let oldLogo = ImageAsset(name: "old_logo")
    internal static let cameraCapture = ImageAsset(name: "camera_capture")
    internal static let cameraPlay = ImageAsset(name: "camera_play")
    internal static let cameraStop = ImageAsset(name: "camera_stop")
    internal static let cameraVideoCapture = ImageAsset(name: "camera_video_capture")
    internal static let videoIcon = ImageAsset(name: "video_icon")
    internal static let peopleEmptyScreenArtwork = ImageAsset(name: "people_empty_screen_artwork")
    internal static let peopleEmptyScreenArtworkDark = ImageAsset(name: "people_empty_screen_artwork_dark")
    internal static let peopleFloatingAction = ImageAsset(name: "people_floating_action")
    internal static let actionCamera = ImageAsset(name: "action_camera")
    internal static let actionFile = ImageAsset(name: "action_file")
    internal static let actionMediaLibrary = ImageAsset(name: "action_media_library")
    internal static let actionSticker = ImageAsset(name: "action_sticker")
    internal static let error = ImageAsset(name: "error")
    internal static let errorMessageTick = ImageAsset(name: "error_message_tick")
    internal static let newClose = ImageAsset(name: "new_close")
    internal static let roomActivitiesRetry = ImageAsset(name: "room_activities_retry")
    internal static let roomScrollUp = ImageAsset(name: "room_scroll_up")
    internal static let scrolldown = ImageAsset(name: "scrolldown")
    internal static let scrolldownDark = ImageAsset(name: "scrolldown_dark")
    internal static let sendingMessageTick = ImageAsset(name: "sending_message_tick")
    internal static let sentMessageTick = ImageAsset(name: "sent_message_tick")
    internal static let typing = ImageAsset(name: "typing")
    internal static let roomContextMenuCopy = ImageAsset(name: "room_context_menu_copy")
    internal static let roomContextMenuDelete = ImageAsset(name: "room_context_menu_delete")
    internal static let roomContextMenuEdit = ImageAsset(name: "room_context_menu_edit")
    internal static let roomContextMenuMore = ImageAsset(name: "room_context_menu_more")
    internal static let roomContextMenuReply = ImageAsset(name: "room_context_menu_reply")
    internal static let roomContextMenuRetry = ImageAsset(name: "room_context_menu_retry")
    internal static let inputCloseIcon = ImageAsset(name: "input_close_icon")
    internal static let inputEditIcon = ImageAsset(name: "input_edit_icon")
    internal static let inputReplyIcon = ImageAsset(name: "input_reply_icon")
    internal static let inputTextBackground = ImageAsset(name: "input_text_background")
    internal static let saveIcon = ImageAsset(name: "save_icon")
    internal static let sendIcon = ImageAsset(name: "send_icon")
    internal static let uploadIcon = ImageAsset(name: "upload_icon")
    internal static let uploadIconDark = ImageAsset(name: "upload_icon_dark")
    internal static let videoCall = ImageAsset(name: "video_call")
    internal static let voiceCallHangonIcon = ImageAsset(name: "voice_call_hangon_icon")
    internal static let voiceCallHangupIcon = ImageAsset(name: "voice_call_hangup_icon")
    internal static let voiceMessageCancelGradient = ImageAsset(name: "voice_message_cancel_gradient")
    internal static let voiceMessageLockChevron = ImageAsset(name: "voice_message_lock_chevron")
    internal static let voiceMessageLockIconLocked = ImageAsset(name: "voice_message_lock_icon_locked")
    internal static let voiceMessageLockIconUnlocked = ImageAsset(name: "voice_message_lock_icon_unlocked")
    internal static let voiceMessagePauseButton = ImageAsset(name: "voice_message_pause_button")
    internal static let voiceMessagePlayButton = ImageAsset(name: "voice_message_play_button")
    internal static let voiceMessageRecordButtonDefault = ImageAsset(name: "voice_message_record_button_default")
    internal static let voiceMessageRecordButtonRecording = ImageAsset(name: "voice_message_record_button_recording")
    internal static let voiceMessageRecordIcon = ImageAsset(name: "voice_message_record_icon")
    internal static let addMemberFloatingAction = ImageAsset(name: "add_member_floating_action")
    internal static let addParticipant = ImageAsset(name: "add_participant")
    internal static let addParticipants = ImageAsset(name: "add_participants")
    internal static let detailsIcon = ImageAsset(name: "details_icon")
    internal static let editIcon = ImageAsset(name: "edit_icon")
    internal static let integrationsIcon = ImageAsset(name: "integrations_icon")
    internal static let mainAliasIcon = ImageAsset(name: "main_alias_icon")
    internal static let membersListIcon = ImageAsset(name: "members_list_icon")
    internal static let modIcon = ImageAsset(name: "mod_icon")
    internal static let moreReactions = ImageAsset(name: "more_reactions")
    internal static let notifications = ImageAsset(name: "notifications")
    internal static let scrollup = ImageAsset(name: "scrollup")
    internal static let roomsEmptyScreenArtwork = ImageAsset(name: "rooms_empty_screen_artwork")
    internal static let roomsEmptyScreenArtworkDark = ImageAsset(name: "rooms_empty_screen_artwork_dark")
    internal static let roomsFloatingAction = ImageAsset(name: "rooms_floating_action")
    internal static let userIcon = ImageAsset(name: "user_icon")
    internal static let fileDocIcon = ImageAsset(name: "file_doc_icon")
    internal static let fileMusicIcon = ImageAsset(name: "file_music_icon")
    internal static let filePhotoIcon = ImageAsset(name: "file_photo_icon")
    internal static let fileVideoIcon = ImageAsset(name: "file_video_icon")
    internal static let searchBg = ImageAsset(name: "search_bg")
    internal static let searchIcon = ImageAsset(name: "search_icon")
    internal static let secretsRecoveryKey = ImageAsset(name: "secrets_recovery_key")
    internal static let secretsRecoveryPassphrase = ImageAsset(name: "secrets_recovery_passphrase")
    internal static let secretsSetupKey = ImageAsset(name: "secrets_setup_key")
    internal static let secretsSetupPassphrase = ImageAsset(name: "secrets_setup_passphrase")
    internal static let secretsResetWarning = ImageAsset(name: "secrets_reset_warning")
    internal static let removeIconPink = ImageAsset(name: "remove_icon_pink")
    internal static let settingsIcon = ImageAsset(name: "settings_icon")
    internal static let sideMenuActionIconFeedback = ImageAsset(name: "side_menu_action_icon_feedback")
    internal static let sideMenuActionIconHelp = ImageAsset(name: "side_menu_action_icon_help")
    internal static let sideMenuActionIconSettings = ImageAsset(name: "side_menu_action_icon_settings")
    internal static let sideMenuActionIconShare = ImageAsset(name: "side_menu_action_icon_share")
    internal static let sideMenuActionIconWallet = ImageAsset(name: "side_menu_action_icon_wallet")
    internal static let sideMenuIcon = ImageAsset(name: "side_menu_icon")
    internal static let featureUnavaibleArtwork = ImageAsset(name: "feature_unavaible_artwork")
    internal static let featureUnavaibleArtworkDark = ImageAsset(name: "feature_unavaible_artwork_dark")
    internal static let tabFavourites = ImageAsset(name: "tab_favourites")
    internal static let tabGroups = ImageAsset(name: "tab_groups")
    internal static let tabHome = ImageAsset(name: "tab_home")
    internal static let tabPeople = ImageAsset(name: "tab_people")
    internal static let tabRooms = ImageAsset(name: "tab_rooms")
    internal static let launchScreenLogo = ImageAsset(name: "launch_screen_logo")
    internal static let addNew = ImageAsset(name: "ADD_NEW")
    internal static let addDaoru = ImageAsset(name: "ADD_daoru")
    internal static let masterNodeNone = ImageAsset(name: "Master_node_none")
    internal static let addQR = ImageAsset(name: "add_QR")
    internal static let backBBlack = ImageAsset(name: "back_b_black")
    internal static let backW = ImageAsset(name: "back_w")
    internal static let bankcardDetails = ImageAsset(name: "bankcard_details")
    internal static let cardAdd = ImageAsset(name: "card_add")
    internal static let closeRed = ImageAsset(name: "close_red")
    internal static let closeWhite = ImageAsset(name: "close_white")
    internal static let detailMore = ImageAsset(name: "detail_more")
    internal static let detailSend = ImageAsset(name: "detail_send")
    internal static let epMeArrow = ImageAsset(name: "ep_me_arrow")
    internal static let epMeEdit = ImageAsset(name: "ep_me_edit")
    internal static let epMeEnterPrise = ImageAsset(name: "ep_me_enterPrise")
    internal static let epMeLock = ImageAsset(name: "ep_me_lock")
    internal static let epMeSetting = ImageAsset(name: "ep_me_setting")
    internal static let failWalletIcon = ImageAsset(name: "fail_wallet_icon")
    internal static let growPlanBg = ImageAsset(name: "growPlanBg")
    internal static let homeAdd = ImageAsset(name: "home_add")
    internal static let homeReceive = ImageAsset(name: "home_receive")
    internal static let homeSend = ImageAsset(name: "home_send")
    internal static let homeSetting = ImageAsset(name: "home_setting")
    internal static let homeTopQr = ImageAsset(name: "home_top_qr")
    internal static let homeTopSend = ImageAsset(name: "home_top_send")
    internal static let homeTopTixian = ImageAsset(name: "home_top_tixian")
    internal static let homeWait = ImageAsset(name: "home_wait")
    internal static let homeZizhuan = ImageAsset(name: "home_zizhuan")
    internal static let iconNothing = ImageAsset(name: "icon_nothing")
    internal static let imgScanningLine = ImageAsset(name: "img_scanning_line")
    internal static let imgScanningQr = ImageAsset(name: "img_scanning_qr")
    internal static let jiedianWorking = ImageAsset(name: "jiedian_working")
    internal static let jiluDui = ImageAsset(name: "jilu_dui")
    internal static let jiluDuiFail = ImageAsset(name: "jilu_dui_fail")
    internal static let jiluDuiWait = ImageAsset(name: "jilu_dui_wait")
    internal static let jiluNotFinished = ImageAsset(name: "jilu_not_finished")
    internal static let meIntegral = ImageAsset(name: "me_Integral")
    internal static let meDelivery = ImageAsset(name: "me_delivery")
    internal static let meEdit = ImageAsset(name: "me_edit")
    internal static let meExperience = ImageAsset(name: "me_experience")
    internal static let meFavrioute = ImageAsset(name: "me_favrioute")
    internal static let meFile = ImageAsset(name: "me_file")
    internal static let meGift = ImageAsset(name: "me_gift")
    internal static let meGiftInvitation = ImageAsset(name: "me_gift_invitation")
    internal static let meIconArrow = ImageAsset(name: "me_icon_arrow")
    internal static let meLie = ImageAsset(name: "me_lie")
    internal static let meMyproject = ImageAsset(name: "me_myproject")
    internal static let meQrcode = ImageAsset(name: "me_qrcode")
    internal static let meResume = ImageAsset(name: "me_resume")
    internal static let meSetting = ImageAsset(name: "me_setting")
    internal static let meTeam = ImageAsset(name: "me_team")
    internal static let meWallet = ImageAsset(name: "me_wallet")
    internal static let msgAddressCurrentSelect = ImageAsset(name: "msg_address_current_select")
    internal static let msgAddressDefaultSelect = ImageAsset(name: "msg_address_default_select")
    internal static let netNode = ImageAsset(name: "net_node")
    internal static let newNoteBg = ImageAsset(name: "new_note_bg")
    internal static let nodeLightIcon = ImageAsset(name: "node_light_icon")
    internal static let scanIcon = ImageAsset(name: "scan_icon")
    internal static let settingNext = ImageAsset(name: "setting_next")
    internal static let shoukuanAdd = ImageAsset(name: "shoukuan_add")
    internal static let successWalletIcon = ImageAsset(name: "success_wallet_icon")
    internal static let tonxIcon = ImageAsset(name: "tonx_icon")
    internal static let topAdd = ImageAsset(name: "top_add")
    internal static let warningWalletIcon = ImageAsset(name: "warning_wallet_icon")
    internal static let wechatAdd = ImageAsset(name: "wechat_add")
    internal static let wechatDetail = ImageAsset(name: "wechat_detail")
    internal static let wechatPay = ImageAsset(name: "wechat_pay")
    internal static let zhifubPay = ImageAsset(name: "zhifub_pay")
    internal static let zhifubaoAdd = ImageAsset(name: "zhifubao_add")
    internal static let zhifubaoDetail = ImageAsset(name: "zhifubao_detail")
  }
  internal enum SharedImages {
    internal static let cancel = ImageAsset(name: "cancel")
    internal static let e2eVerified = ImageAsset(name: "e2e_verified")
    internal static let horizontalLogo = ImageAsset(name: "horizontal_logo")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
