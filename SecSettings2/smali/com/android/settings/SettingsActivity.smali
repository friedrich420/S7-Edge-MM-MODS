.class public Lcom/android/settings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$onEditButtonClicked;,
        Lcom/android/settings/SettingsActivity$ViewPagerAdapter;,
        Lcom/android/settings/SettingsActivity$AssistantReceiver;,
        Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;
    }
.end annotation


# static fields
.field public static final ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static bReDrawTab:Z

.field private static bReDrawTabAirplaneMode:Z

.field private static mContext:Landroid/content/Context;

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private SETTINGS_FOR_T4R:[I

.field private addLayoutCount:I

.field private bEasymode:Z

.field private bEnableTab:Z

.field private bForceFocus:Z

.field private bOldShowDev:Z

.field private curOrientation:I

.field private fromActSearch:Z

.field private isKioskContainer:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessoriesMenuOpened:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAddQuickSettings:Landroid/widget/TextView;

.field private mAddQuickSettingsContainer:Landroid/view/ViewGroup;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

.field private mDashboardTabcategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

.field private mEdit:Landroid/view/MenuItem;

.field private mEditQuickSettingExpanded:Z

.field private mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

.field private mFavoriteTilesCount:I

.field private mFontIndex:I

.field private mForceRedraw:Z

.field private mFotaUpdateStub:Landroid/view/ViewStub;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsEmerMode:Z

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private mKnoxCustomProKioskSettingsItems:I

.field private mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxCustomSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxCustomSettingsState:I

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

.field private mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

.field mPagerAdapter:Lcom/android/settings/SettingsActivity$ViewPagerAdapter;

.field private mQuickSettingsHeight:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultIntentData:Landroid/content/Intent;

.field private mScrollView:Lcom/android/settings/widget/CustomScrollView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowFotaView:Z

.field private mSinglePane:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTetheredData:I

.field private mTitleRedID:I

.field private mTopLevelDashboardId:I

.field private maxTabCnt:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private tabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 286
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 410
    new-array v0, v5, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    aput-object v1, v0, v4

    const-string v1, "com.android.settings.fingerprint.FingerprintEntry"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    .line 415
    const/16 v0, 0xa3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.settings.WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "com.android.settings.wifi.WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "com.android.settings.wifi.mobileap.WifiApSettings"

    aput-object v1, v0, v2

    const-string v1, "com.android.settings.wifi.AdvancedWifiSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "com.android.settings.wifi.WifiShareProfile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.wifi.SavedAccessPointsWifiSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.bluetooth.BluetoothSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.sim.SimSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.mirrorlink.MirrorLink"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.TetherSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings.vpn2.VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.settings.vpn2.VpnSettingsForATT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.settings.DateTimeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.settings.LocalePicker"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.inputmethod.InputMethodAndLanguageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.settings.handwritingsearch.HandwritingLanguagePreference"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings.inputmethod.SpellCheckersSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.android.settings.inputmethod.UserDictionaryList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.android.settings.UserDictionarySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.settings.HomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.android.settings.premiumwatch.PremiumWatchSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.settings.DisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.android.settings.DeviceInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.android.settings.applications.ManageApplications"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.android.settings.applications.ManageDefaultApps"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.android.settings.applications.ManageAssist"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.android.settings.applications.ProcessStatsUi"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.android.settings.applications.UsageAccessDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.android.settings.notification.NotificationStation"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.android.settings.location.LocationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.android.settings.SecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.settings.PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.android.settings.activekey.ActiveKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.android.settings.DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.android.settings.accessibility.AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.android.settings.accessibility.CaptionPropertiesFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.android.settings.accessibility.ToggleDaltonizerPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.android.settings.accessibility.AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsHearing"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsVision"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsMobility"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.android.settings.AssistantMenuPreferenceFragmentActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.android.settings.accessibility.ToggleAccessibilityServicePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.android.settings.accessibility.ToggleScreenMagnificationPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.android.settings.accessibility.ToggleFeaturePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.android.settings.accessibility.ToggleGlobalGesturePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.android.settings.tts.TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.android.settings.deviceinfo.StorageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.android.settings.deviceinfo.PrivateVolumeForget"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.android.settings.deviceinfo.PrivateVolumeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.android.settings.deviceinfo.PublicVolumeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.android.settings.DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.android.settings.nfc.AndroidBeam"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.android.settings.nfc.NfcCommonSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.android.settings.nfc.NfcSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.android.settings.nearby.NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "com.android.settings.nfc.NfcOsaifukeitaiSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.android.settings.wfd.WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "com.android.settings.fuelgauge.PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.android.settings.accounts.AccountSyncSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "com.android.settings.accounts.AccountSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "com.android.settings.CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "com.android.settings.CryptKeeperInterstitial"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.android.settings.encryption.CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.android.settings.DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.android.settings.DreamSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "com.android.settings.users.UserSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "com.android.settings.notification.NotificationAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "com.android.settings.notification.ZenAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "com.android.settings.print.PrintSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "com.android.settings.print.PrintJobSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.android.settings.TrustedCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "com.android.settings.UserCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "com.android.settings.nfc.PaymentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "com.android.settings.nfc.PaymentBaseSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "com.android.settings.safetycare.SafetyCareEmergencyMode"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "com.android.settings.inputmethod.KeyboardLayoutPickerFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "com.android.settings.LockscreenMenuSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "com.android.settings.AirplaneModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "com.android.settings.DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "com.android.settings.accessories.LedCoverCallerIDSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "com.android.settings.accessories.LedCoverCallerIDList"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "com.android.settings.accessories.LedCoverCallerIDSelectionList"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "com.android.settings.personalpage.PersonalPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "com.android.settings.privatebox.PrivateBoxSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "com.android.settings.AirplaneModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "com.android.settings.AirplaneModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "com.nttdocomo.android.docomoset.DocomoServiceSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "com.android.settings.DCMHomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "com.android.settings.fingerprint.PaypalFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "com.android.settings.notification.ZenModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "com.android.settings.notification.ZenModeDNDSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "com.android.settings.notification.NotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "com.android.settings.notification.VolumeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "com.android.settings.ChooseLockPassword.ChooseLockPasswordFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "com.android.settings.ChooseLockPattern.ChooseLockPatternFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "com.android.settings.applications.InstalledAppDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "com.android.settings.applications.ProcessStatsUi"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "com.android.settings.fuelgauge.BatterySaverSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "com.android.settings.notification.AppNotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "com.android.settings.notification.BlockNotificationList"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "com.android.settings.notification.PriorityNotiAppList"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "com.android.settings.notification.OtherSoundSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "com.android.settings.notification.SoundEffectSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "com.android.settings.notification.VibrationsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "com.android.settings.notification.VibrationIntensitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "com.android.settings.notification.NotificationsSubSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "com.android.settings.quicklaunch.QuickLaunchSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "com.android.settings.ApnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "com.android.settings.notification.ZenModePrioritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "com.android.settings.notification.ZenModeAutomationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "com.android.settings.notification.ZenModeScheduleRuleSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "com.android.settings.notification.ZenModeEventRuleSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "com.android.settings.notification.ZenModeExternalRuleSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "com.android.settings.applications.ProcessStatsUi"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "com.android.settings.fuelgauge.PowerUsageDetail"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "com.android.settings.applications.ProcessStatsSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "com.android.settings.applications.DrawOverlayDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "com.android.settings.applications.WriteSettingsDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "com.android.settings.cpa.CpaAddmenu"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "com.android.settings.ApplicationsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "com.android.settings.easymode.EasyModeApp"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "com.android.settings.TRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "com.android.settings.GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "com.android.settings.LGTRoamingEnv"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "com.android.settings.LGTCustomerService"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "com.android.settings.GlobalLteRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "com.android.settings.powersavingmode.GenericPowerSavingMode"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "com.android.settings.powersavingmode.PowerSavingModeUltra"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "com.android.settings.GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "com.android.settings.OtherSecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "com.android.settings.fmm.FindMyMobileSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "com.android.settings.SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "com.android.settings.usefulfeature.Usefulfeature"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "com.android.settings.usefulfeature.UsefulFeatureHub"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "com.android.settings.motion.MotionSettings2015"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "com.android.settings.nearbyscan.NearbyScanning"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "com.android.settings.spen.SPenSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "com.android.settings.spen.PenPointerHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "com.android.settings.spen.AirButtonHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "com.android.settings.spen.PenAirViewSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "com.android.settings.spen.DirectPenInputSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "com.android.settings.dualclock.DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "com.android.settings.LteModeActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "com.android.settings.DataSlotChoice"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "com.android.settings.SmartStaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "com.android.settings.ShowInfomationMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "com.android.settings.SecuredLockSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "com.android.settings.LockscreenNotificationApplist"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "com.android.settings.lockappshortcut.LockAppShortcutSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "com.android.settings.legal.LegalInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "com.android.settings.deviceinfo.BatteryInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "com.android.settings.deviceinfo.SoftwareInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "com.android.settings.SwipeLockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "com.android.settings.spen.PenAirCmdSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "com.android.settings.GigaLteSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "com.android.settings.DomesticSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "com.android.settings.cloud.CloudSettingsMainFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "com.android.settings.bluetooth.DeviceProfilesSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "com.android.settings.SecurityPolicySettings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 591
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 640
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->bReDrawTab:Z

    .line 641
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->bReDrawTabAirplaneMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 282
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mTopLevelDashboardId:I

    .line 289
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mForceRedraw:Z

    .line 290
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mTetheredData:I

    .line 291
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    .line 315
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 316
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 317
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 320
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 327
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 384
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_T4R:[I

    .line 409
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    .line 612
    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    .line 617
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    .line 622
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mIsEmerMode:Z

    .line 629
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mQuickSettingsHeight:I

    .line 633
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    .line 634
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    .line 635
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mFontIndex:I

    .line 638
    iput v1, p0, Lcom/android/settings/SettingsActivity;->addLayoutCount:I

    .line 639
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->bForceFocus:Z

    .line 642
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->bOldShowDev:Z

    .line 644
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mFavoriteTilesCount:I

    .line 649
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 650
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mEditQuickSettingExpanded:Z

    .line 651
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mAccessoriesMenuOpened:Z

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 661
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/SettingsActivity;->maxTabCnt:I

    .line 664
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 677
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 678
    iput v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 725
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    .line 731
    new-instance v0, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    .line 908
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    .line 1019
    new-instance v0, Lcom/android/settings/SettingsActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 3699
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    return-void

    .line 327
    nop

    :array_0
    .array-data 4
        0x7f0d064e
        0x7f0d0650
        0x7f0d064f
        0x7f0d0651
        0x7f0d069d
        0x7f0d0654
        0x7f0d0658
        0x7f0d0657
        0x7f0d0662
        0x7f0d066a
        0x7f0d0669
        0x7f0d066a
        0x7f0d0670
        0x7f0d0698
        0x7f0d0679
        0x7f0d0666
        0x7f0d0697
        0x7f0d067e
        0x7f0d068c
        0x7f0d0688
        0x7f0d0695
        0x7f0d067c
        0x7f0d0690
        0x7f0d0694
        0x7f0d069a
        0x7f0d069f
        0x7f0d068f
        0x7f0d0663
        0x7f0d0160
        0x7f0d0655
        0x7f0d0699
        0x7f0d0652
        0x7f0d0653
        0x7f0d065b
        0x7f0d0659
        0x7f0d0692
        0x7f0d0160
        0x7f0d065e
        0x7f0d0675
        0x7f0d0677
        0x7f0d0680
        0x7f0d0683
        0x7f0d068b
        0x7f0d0697
        0x7f0d068c
        0x7f0d068a
        0x7f0d0676
        0x7f0d066f
        0x7f0d0682
    .end array-data

    .line 384
    :array_1
    .array-data 4
        0x7f0d064e
        0x7f0d0650
        0x7f0d0654
        0x7f0d0656
        0x7f0d0658
        0x7f0d065c
        0x7f0d065e
        0x7f0d0669
        0x7f0d066a
        0x7f0d0670
        0x7f0d0679
        0x7f0d0666
        0x7f0d067e
        0x7f0d0688
        0x7f0d068b
        0x7f0d0690
        0x7f0d0691
        0x7f0d0694
        0x7f0d0695
        0x7f0d0698
        0x7f0d069a
        0x7f0d069b
        0x7f0d069f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SettingsActivity;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget v0, p0, Lcom/android/settings/SettingsActivity;->tabIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/SettingsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget v0, p0, Lcom/android/settings/SettingsActivity;->addLayoutCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/android/settings/SettingsActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget v0, p0, Lcom/android/settings/SettingsActivity;->addLayoutCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/SettingsActivity;->addLayoutCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mShowFotaView:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsActivity;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/settings/SettingsActivity;->bReDrawTabAirplaneMode:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 174
    sput-boolean p0, Lcom/android/settings/SettingsActivity;->bReDrawTabAirplaneMode:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/SettingsActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private addExternalTiles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3287
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3289
    .local v0, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings/dashboard/DashboardTile;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 3290
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3291
    .local v2, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings/SettingsActivity;->addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_0

    .line 3293
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 15
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3296
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings/dashboard/DashboardTile;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 3297
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3298
    .local v5, "intent":Landroid/content/Intent;
    const/16 v12, 0x80

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v8, v5, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 3300
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 3301
    .local v9, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v12, v9, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v12, :cond_0

    .line 3305
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3306
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 3307
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 3308
    :cond_1
    const-string v13, "SettingsActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " for action "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " missing metadata "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v7, :cond_2

    const-string v12, ""

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v12, "com.android.settings.category"

    goto :goto_1

    .line 3313
    :cond_3
    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3314
    .local v3, "categoryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/android/settings/SettingsActivity;->getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v2

    .line 3315
    .local v2, "category":Lcom/android/settings/dashboard/DashboardCategory;
    if-nez v2, :cond_4

    .line 3316
    const-string v12, "SettingsActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has unknown "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "category key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3320
    :cond_4
    new-instance v6, Landroid/util/Pair;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3322
    .local v6, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/dashboard/DashboardTile;

    .line 3323
    .local v11, "tile":Lcom/android/settings/dashboard/DashboardTile;
    if-nez v11, :cond_5

    .line 3324
    new-instance v11, Lcom/android/settings/dashboard/DashboardTile;

    .end local v11    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    invoke-direct {v11}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 3325
    .restart local v11    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iput-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 3327
    invoke-static {p0, v11}, Lcom/android/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    .line 3328
    iget v12, v2, Lcom/android/settings/dashboard/DashboardCategory;->externalIndex:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    .line 3331
    invoke-virtual {v2, v11}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 3335
    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3337
    :cond_5
    iget-object v12, v11, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3333
    :cond_6
    iget v12, v2, Lcom/android/settings/dashboard/DashboardCategory;->externalIndex:I

    invoke-virtual {v2, v12, v11}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    goto :goto_2

    .line 3339
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v6    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v11    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_7
    return-void
.end method

.method private clearBackStack()V
    .locals 2

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1035
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 1038
    :cond_0
    return-void
.end method

.method private drawDashboardTab()V
    .locals 7

    .prologue
    const v6, 0x7f0d04d8

    .line 2230
    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v4, :cond_0

    .line 2231
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    .line 2232
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 2234
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setElevation(F)V

    .line 2235
    const v4, 0x7f04020b

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 2236
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings/SettingsActivity;->maxTabCnt:I

    .line 2237
    const v4, 0x7f0d00c3

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 2238
    const v4, 0x7f0d04d7

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 2239
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->twUseRatioMaintainedImage()V

    .line 2240
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v5, Lcom/android/settings/SettingsActivity$15;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsActivity$15;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2252
    const v4, 0x1020012

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 2253
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 2254
    sget-object v4, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->rebuildTabContainer(Landroid/content/Context;)V

    .line 2255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2256
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2257
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/DashboardCategory;

    iget v4, v4, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 2259
    .local v2, "spec":Landroid/widget/TabHost$TabSpec;
    packed-switch v0, :pswitch_data_0

    .line 2276
    invoke-virtual {v2, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 2279
    :goto_1
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2255
    .end local v2    # "spec":Landroid/widget/TabHost$TabSpec;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2261
    .restart local v2    # "spec":Landroid/widget/TabHost$TabSpec;
    :pswitch_0
    invoke-virtual {v2, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2264
    :pswitch_1
    const v4, 0x7f0d04d9

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2267
    :pswitch_2
    const v4, 0x7f0d04da

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2270
    :pswitch_3
    const v4, 0x7f0d04db

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2273
    :pswitch_4
    const v4, 0x7f0d04dc

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2281
    .end local v2    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_1
    iget v4, p0, Lcom/android/settings/SettingsActivity;->maxTabCnt:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/settings/SettingsActivity;->maxTabCnt:I

    goto :goto_2

    .line 2284
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2285
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 2286
    .local v3, "w":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2302
    new-instance v4, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;-><init>(Lcom/android/settings/SettingsActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mPagerAdapter:Lcom/android/settings/SettingsActivity$ViewPagerAdapter;

    .line 2303
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mPagerAdapter:Lcom/android/settings/SettingsActivity$ViewPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2304
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/android/settings/SettingsActivity$16;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsActivity$16;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2316
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget v5, p0, Lcom/android/settings/SettingsActivity;->maxTabCnt:I

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2317
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mPagerAdapter:Lcom/android/settings/SettingsActivity$ViewPagerAdapter;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 2318
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2319
    return-void

    .line 2259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings/dashboard/DashboardCategory;
    .locals 3
    .param p2, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings/dashboard/DashboardCategory;"
        }
    .end annotation

    .prologue
    .line 3341
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 3342
    .local v0, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3346
    .end local v0    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEntryForSearch()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 582
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    sget-object v3, Lcom/android/settings/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    array-length v3, v3

    add-int v1, v2, v3

    .line 583
    .local v1, "length":I
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEntryForSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 589
    :goto_0
    return-object v2

    .line 586
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 587
    .local v0, "both":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 588
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getHidedViewRatio()F
    .locals 3

    .prologue
    .line 3601
    const/4 v0, 0x0

    .line 3602
    .local v0, "hidedViewRatio":F
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mQuickSettingsHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    invoke-virtual {v2}, Lcom/android/settings/widget/CustomScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/SettingsActivity;->mQuickSettingsHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 3603
    return v0
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1573
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 3384
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3386
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 3397
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 3387
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelDashboardId:I

    .line 3388
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 3389
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3390
    const-string v2, "com.android.settings.location.LocationSettings"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3391
    const v2, 0x7f0d068c

    iput v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelDashboardId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3393
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 3395
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSettingsActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2500
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2501
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 2503
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1973
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1982
    :cond_0
    :goto_0
    return-object v0

    .line 1974
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1975
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1976
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1980
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 790
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 792
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 793
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 795
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 3643
    const-string v2, "isContainerOnlyMode"

    const-string v3, "isContainerOnlyMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    if-nez p1, :cond_0

    .line 3645
    const-string v2, "isContainerOnlyMode"

    const-string v3, "null, false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :goto_0
    return v1

    .line 3648
    :cond_0
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3649
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3650
    const-string v1, "isContainerOnlyMode"

    const-string v2, "isContainerOnlyMode() true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    const/4 v1, 0x1

    goto :goto_0

    .line 3653
    :cond_1
    const-string v2, "isContainerOnlyMode"

    const-string v3, "isContainerOnlyMode() false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 977
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v2

    .line 981
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 982
    sget-object v3, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 981
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 973
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 974
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V
    .locals 28
    .param p0, "resid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2347
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2348
    .local v20, "start":J
    const/16 v17, 0x0

    .line 2350
    .local v17, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 2351
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 2354
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    .local v23, "type":I
    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 2357
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2358
    .local v15, "nodeName":Ljava/lang/String;
    const-string v24, "dashboard-categories"

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 2359
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "nodeName":Ljava/lang/String;
    .end local v23    # "type":I
    :catch_0
    move-exception v10

    .line 2483
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Error parsing categories"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2487
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v20

    .line 2488
    .local v8, "delta":J
    const-string v25, "SettingsActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "loadCategoriesFromResource took: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2490
    :cond_2
    throw v24

    .line 2363
    .end local v8    # "delta":J
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v15    # "nodeName":Ljava/lang/String;
    .restart local v23    # "type":I
    :cond_3
    const/4 v7, 0x0

    .line 2364
    .local v7, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    .line 2366
    .local v16, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v16

    if-le v0, v1, :cond_1c

    .line 2367
    :cond_5
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 2370
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2371
    const-string v24, "dashboard-category"

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 2372
    new-instance v6, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v6}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 2373
    .local v6, "category":Lcom/android/settings/dashboard/DashboardCategory;
    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 2375
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v6, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 2378
    const/16 v24, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v22

    .line 2380
    .local v22, "tv":Landroid/util/TypedValue;
    if-eqz v22, :cond_6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 2381
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 2382
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v6, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 2387
    :cond_6
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 2388
    sget-object v24, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 2390
    const/16 v24, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v22

    .line 2392
    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 2393
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 2394
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v6, Lcom/android/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 2399
    :cond_7
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 2400
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 2402
    .local v11, "innerDepth":I
    :cond_8
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v11, :cond_1a

    .line 2403
    :cond_9
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 2406
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2407
    .local v13, "innerNodeName":Ljava/lang/String;
    const-string v24, "dashboard-tile"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 2408
    new-instance v19, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 2409
    .local v19, "tile":Lcom/android/settings/dashboard/DashboardTile;
    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 2411
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 2414
    const/16 v24, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v22

    .line 2416
    if-eqz v22, :cond_a

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 2417
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 2418
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 2423
    :cond_a
    :goto_4
    const/16 v24, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v22

    .line 2425
    if-eqz v22, :cond_b

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 2426
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 2427
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 2432
    :cond_b
    :goto_5
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 2434
    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 2437
    sget-object v24, Lcom/android/settings/R$styleable;->SettingsTile:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2438
    .local v4, "SettingsTile_sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    .line 2439
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    .line 2440
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2441
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 2442
    if-nez v7, :cond_c

    .line 2443
    new-instance v7, Landroid/os/Bundle;

    .end local v7    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2445
    .restart local v7    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 2447
    .local v12, "innerDepth2":I
    :cond_d
    :goto_6
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v12, :cond_15

    .line 2448
    :cond_e
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 2451
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2452
    .local v14, "innerNodeName2":Ljava/lang/String;
    const-string v24, "extra"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 2453
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const-string v25, "extra"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2455
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 2484
    .end local v4    # "SettingsTile_sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v7    # "curBundle":Landroid/os/Bundle;
    .end local v11    # "innerDepth":I
    .end local v12    # "innerDepth2":I
    .end local v13    # "innerNodeName":Ljava/lang/String;
    .end local v14    # "innerNodeName2":Ljava/lang/String;
    .end local v15    # "nodeName":Ljava/lang/String;
    .end local v16    # "outerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v19    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v22    # "tv":Landroid/util/TypedValue;
    .end local v23    # "type":I
    :catch_1
    move-exception v10

    .line 2485
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Error parsing categories"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2384
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v7    # "curBundle":Landroid/os/Bundle;
    .restart local v15    # "nodeName":Ljava/lang/String;
    .restart local v16    # "outerDepth":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v22    # "tv":Landroid/util/TypedValue;
    .restart local v23    # "type":I
    :cond_f
    :try_start_4
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v6, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2396
    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v6, Lcom/android/settings/dashboard/DashboardCategory;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 2420
    .restart local v11    # "innerDepth":I
    .restart local v13    # "innerNodeName":Ljava/lang/String;
    .restart local v19    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_11
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 2429
    :cond_12
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 2456
    .restart local v4    # "SettingsTile_sa":Landroid/content/res/TypedArray;
    .restart local v12    # "innerDepth2":I
    .restart local v14    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    const-string v24, "intent"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 2457
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 2460
    :cond_14
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 2463
    .end local v14    # "innerNodeName2":Ljava/lang/String;
    :cond_15
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v24

    if-lez v24, :cond_16

    .line 2464
    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 2465
    const/4 v7, 0x0

    .line 2468
    :cond_16
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x7f0d0657

    cmp-long v24, v24, v26

    if-nez v24, :cond_17

    invoke-static/range {p2 .. p2}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 2469
    :cond_17
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_3

    .line 2471
    .end local v4    # "SettingsTile_sa":Landroid/content/res/TypedArray;
    .end local v12    # "innerDepth2":I
    .end local v19    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_18
    const-string v24, "external-tiles"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 2472
    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v24

    move/from16 v0, v24

    iput v0, v6, Lcom/android/settings/dashboard/DashboardCategory;->externalIndex:I

    goto/16 :goto_3

    .line 2474
    :cond_19
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 2477
    .end local v13    # "innerNodeName":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2479
    .end local v6    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v11    # "innerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "tv":Landroid/util/TypedValue;
    :cond_1b
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2487
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v8, v24, v20

    .line 2488
    .restart local v8    # "delta":J
    const-string v24, "SettingsActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "loadCategoriesFromResource took: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    if-eqz v17, :cond_1d

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2491
    :cond_1d
    return-void
.end method

.method private populateKnoxCustomProKioskSettingsMap()V
    .locals 3

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0650

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3691
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3692
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d068c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3693
    return-void
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 4

    .prologue
    const/16 v3, 0x200

    .line 3671
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0650

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3672
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0655

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3674
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0670

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0688

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3677
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0695

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0691

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d067c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d069c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0679

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3682
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d067a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3683
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d067b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0668

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0666

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0667

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3687
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d068c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3688
    return-void
.end method

.method private rebuildTabContainer(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1501
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1502
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->getFavoriteCategories(Z)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v0

    .line 1503
    .local v0, "favorites":Lcom/android/settings/dashboard/DashboardCategory;
    const-string v2, "main_mode"

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    .line 1504
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HIDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1505
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1507
    :cond_0
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 3410
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 3411
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3476
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 3477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 3478
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 3479
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_1

    .line 3481
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3495
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3496
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 3498
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    .line 3499
    return-void

    .line 3492
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    goto :goto_0

    .line 3482
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setAnimationSearchView(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 3517
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v4, :cond_1

    .line 3539
    :cond_0
    :goto_0
    return-void

    .line 3519
    :cond_1
    const/4 v0, 0x0

    .line 3520
    .local v0, "a1":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_3

    .line 3521
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3526
    .restart local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    :goto_1
    if-eqz v0, :cond_2

    .line 3527
    const-wide/16 v4, 0x168

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3531
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android:id/search_bar"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3532
    .local v3, "searchBarId":I
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3533
    .local v2, "searchBar":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 3534
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3536
    .end local v2    # "searchBar":Landroid/widget/LinearLayout;
    .end local v3    # "searchBarId":I
    :catch_0
    move-exception v1

    .line 3537
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 3523
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    goto :goto_1

    .line 3536
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public static setSettingsActivityContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2493
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 2495
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->checkSupportVolteSettings(Landroid/content/Context;)V

    .line 2496
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->checkVzwVoLTEFeatureEnabled(Landroid/content/Context;)V

    .line 2497
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1641
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1642
    .local v1, "count":I
    if-nez v1, :cond_2

    .line 1643
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v4, :cond_1

    .line 1644
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1649
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    if-lez v4, :cond_0

    .line 1651
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.knox.containeragent2"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    move v1, v3

    .line 1673
    .end local v1    # "count":I
    :goto_2
    return v1

    .line 1646
    .restart local v1    # "count":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1652
    :catch_0
    move-exception v2

    .line 1653
    .local v2, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1654
    .end local v2    # "e1":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 1655
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1661
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v4, :cond_3

    .line 1662
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1663
    if-ne v1, v5, :cond_4

    .line 1664
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1665
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1671
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1672
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_2

    .line 1667
    .end local v0    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1668
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_3
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 4
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 1677
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 1678
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 1679
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1683
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 1684
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_3

    .line 1685
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e14f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1686
    const v2, 0x7f0e1269

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1694
    :cond_0
    :goto_1
    return-void

    .line 1681
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1688
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1691
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 1577
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_0

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    if-lez v6, :cond_0

    .line 1579
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.knox.containeragent2"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1587
    :cond_0
    :goto_0
    const-string v6, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1588
    .local v4, "initialTitleResId":I
    if-lez v4, :cond_2

    .line 1589
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1590
    iput v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1591
    const-string v6, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1593
    .local v5, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1595
    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1597
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1598
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1599
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1613
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v5    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 1580
    .end local v4    # "initialTitleResId":I
    :catch_0
    move-exception v2

    .line 1581
    .local v2, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1582
    .end local v2    # "e1":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 1583
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1601
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "initialTitleResId":I
    .restart local v5    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1602
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "SettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1605
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_1

    .line 1608
    .end local v5    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_2
    iput v8, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1609
    const-string v6, ":settings:show_fragment_title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1610
    .local v3, "initialTitle":Ljava/lang/String;
    if-eqz v3, :cond_3

    .end local v3    # "initialTitle":Ljava/lang/String;
    :goto_2
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1611
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1610
    .restart local v3    # "initialTitle":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2
.end method

.method private showAndHandleFingerPrintDialog()V
    .locals 4

    .prologue
    .line 2027
    const v1, 0x7f0e0297

    const-string v2, "unlock_set_none"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;Z)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 2030
    .local v0, "dialog":Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "frp_warning_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2031
    return-void
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3455
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 3470
    :goto_0
    return-void

    .line 3458
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0489

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 3459
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 3460
    check-cast v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 3466
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 3467
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 3468
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 3469
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    goto :goto_0

    .line 3462
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0e0dd4

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "categoryid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1553
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 1554
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1559
    :goto_0
    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-static {p6, v1}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1560
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1561
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1569
    .local v0, "summary":Ljava/lang/CharSequence;
    return-void

    .line 1556
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1557
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public ScrollHorizontalScrollView(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    const/4 v1, 0x0

    .line 1471
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->bForceFocus:Z

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1473
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->bForceFocus:Z

    .line 1477
    :goto_0
    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public buildDashboardCategories(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2326
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2328
    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2329
    const v0, 0x7f0800cb

    sget-object v1, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 2333
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->updateTilesList(Ljava/util/List;Ljava/lang/String;)V

    .line 2334
    const-string v0, "main_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2335
    invoke-static {p0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/search/Index;->setCategories(Ljava/util/List;)V

    .line 2337
    :cond_0
    return-void

    .line 2331
    :cond_1
    const v0, 0x7f080030

    sget-object v1, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public centerTabItem(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1453
    iput p1, p0, Lcom/android/settings/SettingsActivity;->tabIndex:I

    .line 1454
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1455
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SettingsActivity$13;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$13;-><init>(Lcom/android/settings/SettingsActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1469
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 989
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_0

    .line 992
    const/4 v0, 0x1

    .line 994
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public fingerprintEditBtnClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_0

    const v0, 0x7f0e11dc

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-ne v0, v1, :cond_0

    .line 3706
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0}, Lcom/android/settings/SettingsActivity$onEditButtonClicked;->editKeyPressed()V

    .line 3708
    :cond_0
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 2125
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_1

    .line 2127
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    .line 2128
    if-eqz p1, :cond_0

    .line 2129
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2130
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2138
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 2136
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 711
    invoke-super {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 712
    .local v0, "bar":Landroid/app/ActionBar;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/common/DummyActionBar;

    .end local v0    # "bar":Landroid/app/ActionBar;
    invoke-direct {v0}, Lcom/android/settings/common/DummyActionBar;-><init>()V

    .line 713
    .restart local v0    # "bar":Landroid/app/ActionBar;
    :cond_0
    return-object v0
.end method

.method public getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;Ljava/lang/String;)V

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFavoriteCategories(Z)Lcom/android/settings/dashboard/DashboardCategory;
    .locals 6
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v1, "tempCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    .line 737
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    if-eqz v2, :cond_1

    .line 738
    const v2, 0x7f080030

    sget-object v3, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/android/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 739
    const-string v2, "easy_mode"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsActivity;->updateTilesList(Ljava/util/List;Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 745
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardCategory;

    iget-wide v2, v2, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    const-wide/32 v4, 0x7f0d06a3

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 746
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardCategory;

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    .line 743
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "i":I
    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 750
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_3

    .line 751
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->loadFavorites(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 753
    :cond_3
    const-string v2, "favorite_mode"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsActivity;->updateTilesList(Ljava/util/List;Ljava/lang/String;)V

    .line 754
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 755
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 756
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardCategory;

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    .line 758
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    const-wide/32 v4, 0x7f0d000c

    iput-wide v4, v2, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 759
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    const v3, 0x7f0e008f

    iput v3, v2, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 760
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    return-object v2
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1946
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1947
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1950
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1951
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1952
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1954
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1955
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1959
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1960
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1963
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 1957
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 1963
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 3501
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSuperIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1966
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 2

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v0, :cond_1

    .line 689
    new-instance v0, Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    goto :goto_0
.end method

.method public getTopLevelDashboardId()J
    .locals 2

    .prologue
    .line 3622
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mTopLevelDashboardId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 3400
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideQuickSettingsSupported()Z
    .locals 1

    .prologue
    .line 1917
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1939
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1940
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1942
    :goto_1
    return v1

    .line 1939
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1942
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public mainViewVisible(Z)V
    .locals 9
    .param p1, "bVisible"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0d048a

    const v5, 0x7f0d00c3

    const v4, 0x1020012

    .line 3543
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3544
    .local v1, "fade_out":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3545
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3546
    .local v0, "fade_in":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3547
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-eqz v2, :cond_6

    .line 3548
    if-eqz p1, :cond_4

    .line 3549
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3550
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3551
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3553
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3554
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3555
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3557
    :cond_1
    iput-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mEditQuickSettingExpanded:Z

    .line 3558
    const v2, 0x7f0e01c3

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 3570
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 3571
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3586
    :cond_3
    :goto_1
    return-void

    .line 3561
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3562
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3563
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3565
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3566
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3567
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3574
    :cond_6
    if-eqz p1, :cond_7

    .line 3575
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3576
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3577
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3580
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3582
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 2

    .prologue
    .line 3472
    const-string v0, "Index"

    const-string v1, "needToRevertToInitialFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 3474
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1987
    const/16 v4, 0x67

    if-ne p1, v4, :cond_1

    .line 1988
    if-ne p2, v5, :cond_0

    .line 1989
    new-instance v4, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->switchToSwipe()V

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 1992
    :cond_1
    const/16 v4, 0x65

    if-ne p1, v4, :cond_2

    .line 1993
    if-ne p2, v5, :cond_0

    .line 1994
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 1995
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1997
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2005
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v4, 0x66

    if-ne p1, v4, :cond_4

    .line 2006
    if-ne p2, v5, :cond_0

    .line 2007
    const-string v4, "fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 2008
    .local v3, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2010
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->showAndHandleFingerPrintDialog()V

    goto :goto_0

    .line 2013
    :cond_3
    new-instance v4, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->switchToSwipe()V

    goto :goto_0

    .line 2017
    .end local v3    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_4
    const/16 v4, 0x1f7

    if-eq p1, v4, :cond_5

    const/16 v4, 0x1f6

    if-eq p1, v4, :cond_5

    const/16 v4, 0x1f5

    if-ne p1, v4, :cond_0

    .line 2020
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "main_content2"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 2021
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 2022
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1616
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_2

    .line 1617
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1635
    :goto_0
    return-void

    .line 1622
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    if-eqz v1, :cond_1

    .line 1623
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed consume backKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-interface {v1}, Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;->onBackKey()V

    goto :goto_0

    .line 1627
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 1628
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1629
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 1634
    .end local v0    # "count":I
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 1638
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1639
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 3431
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 798
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 799
    iget-boolean v10, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/settings/SettingsActivity;->mEditQuickSettingExpanded:Z

    if-nez v10, :cond_3

    .line 800
    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v10, :cond_1

    .line 801
    iget v10, p0, Lcom/android/settings/SettingsActivity;->curOrientation:I

    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v10, v11, :cond_0

    .line 802
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/SettingsActivity;->bForceFocus:Z

    .line 803
    :cond_0
    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v8

    .line 804
    .local v8, "tabIndex":I
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/settings/SettingsActivity;->addLayoutCount:I

    .line 805
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    .line 806
    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 809
    .end local v8    # "tabIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/android/settings/SubSettings;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, ":settings:show_fragment_as_subsetting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_2
    const/4 v1, 0x1

    .line 811
    .local v1, "bSubSettings":Z
    :goto_0
    if-nez v1, :cond_3

    iget-boolean v10, p0, Lcom/android/settings/SettingsActivity;->mShowFotaView:Z

    if-eqz v10, :cond_3

    .line 812
    sget-object v10, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v10

    if-lez v10, :cond_3

    .line 813
    const v10, 0x7f0d048c

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    iput-object v10, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    .line 814
    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    if-eqz v10, :cond_3

    .line 815
    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 817
    const v10, 0x7f0d02de

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 818
    .local v9, "view":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v10, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    const v10, 0x7f0d00ee

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 831
    .local v2, "cancelView":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v10, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    .end local v1    # "bSubSettings":Z
    .end local v2    # "cancelView":Landroid/widget/ImageView;
    .end local v9    # "view":Landroid/widget/LinearLayout;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v10, :cond_6

    instance-of v10, p0, Lcom/android/settings/SettingsActivityWrapper;

    if-nez v10, :cond_4

    instance-of v10, p0, Lcom/android/settings/SubSettings;

    if-eqz v10, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 850
    const v10, 0x7f0d0491

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 851
    .local v3, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    .local v4, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v10, 0x7f0f01ab

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 854
    const/4 v10, -0x2

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 856
    :cond_5
    const v10, 0x7f0d0490

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 857
    .local v5, "leftView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 859
    .local v6, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v10, 0x7f0d0492

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 860
    .local v0, "RightView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 862
    .local v7, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 863
    const/high16 v10, 0x40f00000    # 7.5f

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 864
    const/high16 v10, 0x3fa00000    # 1.25f

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 865
    const/high16 v10, 0x3fa00000    # 1.25f

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 866
    const v10, 0x7f0d0490

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 867
    const v10, 0x7f0d0492

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 875
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    .end local v0    # "RightView":Landroid/view/View;
    .end local v3    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v4    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "leftView":Landroid/view/View;
    .end local v6    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget v10, p1, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/android/settings/SettingsActivity;->curOrientation:I

    .line 881
    instance-of v10, p0, Lcom/android/settings/ChooseLockPassword;

    if-nez v10, :cond_7

    instance-of v10, p0, Lcom/android/settings/ChooseLockAdditionalPin;

    if-nez v10, :cond_7

    instance-of v10, p0, Lcom/android/settings/ConfirmLockPassword;

    if-nez v10, :cond_7

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 885
    :cond_7
    return-void

    .line 809
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 869
    .restart local v0    # "RightView":Landroid/view/View;
    .restart local v3    # "centerLayout":Landroid/widget/LinearLayout;
    .restart local v4    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "leftView":Landroid/view/View;
    .restart local v6    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    const/high16 v10, 0x41200000    # 10.0f

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 870
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 871
    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 872
    const v10, 0x7f0d0490

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 873
    const v10, 0x7f0d0492

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 37
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1147
    const-string v2, "settings"

    const-string v5, "onCreate()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 1149
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    .line 1151
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_15

    .line 1152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1159
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v31

    .line 1160
    .local v31, "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v28

    .line 1161
    .local v28, "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v31, :cond_1

    if-eqz v28, :cond_1

    .line 1162
    invoke-virtual/range {v31 .. v31}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 1163
    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getSettingsHiddenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 1164
    invoke-virtual/range {v31 .. v31}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 1167
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1168
    const-string v2, "accessibility"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1170
    const-string v2, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1171
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_2

    .line 1172
    const/16 p1, 0x0

    .line 1174
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1175
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->clearBackStack()V

    .line 1178
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 1179
    .local v34, "start":J
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/SettingsActivity;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    .line 1180
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    .line 1182
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v26

    .line 1184
    .local v26, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    .line 1185
    const-string v2, ":settings:show_fragment_title_resid_knox"

    const/4 v5, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 1187
    :cond_4
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 1190
    :cond_5
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v5, "show"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->bOldShowDev:Z

    .line 1196
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1197
    .local v3, "initialFragmentName":Ljava/lang/String;
    const-string v2, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate / initialFragmentName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-static/range {v26 .. v26}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v26 .. v26}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_6
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    .line 1200
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    .line 1201
    .local v21, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 1202
    .local v19, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_7

    .line 1203
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1205
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mFontIndex:I

    .line 1208
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mAccessoriesMenuOpened:Z

    .line 1212
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SubSettings;

    if-nez v2, :cond_8

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_8
    const/16 v27, 0x1

    .line 1214
    .local v27, "isSubSettings":Z
    :goto_2
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v23

    .line 1215
    .local v23, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1216
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsEmerMode:Z

    .line 1217
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    .line 1220
    :cond_9
    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_18

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v36

    .line 1223
    .local v36, "themeResId":I
    const v2, 0x7f0f023f

    move/from16 v0, v36

    if-eq v0, v2, :cond_a

    const v2, 0x7f0f0244

    move/from16 v0, v36

    if-eq v0, v2, :cond_a

    .line 1225
    const v2, 0x7f0f023a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 1231
    .end local v36    # "themeResId":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1233
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_1b

    .line 1235
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1240
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-eqz v2, :cond_1a

    .line 1241
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/SettingsActivity;->bReDrawTab:Z

    .line 1289
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1293
    if-eqz p1, :cond_1e

    .line 1296
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1297
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1299
    const-string v2, ":settings:key_fragment_title_knox"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 1301
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1302
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1304
    .local v17, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    if-eqz v17, :cond_c

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1307
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1309
    :cond_c
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1310
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1311
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1313
    const-string v2, ":settings:need_to_revert_to_initial_fragment"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1314
    const-string v2, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate / mNeedToRevertToInitialFragment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_d

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v5, "setting_main_view"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v22

    .line 1317
    .local v22, "current":Landroid/app/Fragment;
    if-eqz v22, :cond_d

    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;

    if-eqz v2, :cond_d

    .line 1318
    check-cast v22, Lcom/android/settings/dashboard/DashboardSummarySplit;

    .end local v22    # "current":Landroid/app/Fragment;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    .line 1381
    .end local v17    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_e

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1386
    :cond_e
    const v2, 0x7f0d0179

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1387
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SettingsActivityWrapper;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SubSettings;

    if-eqz v2, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_10

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0197

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0196

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarMargin(II)V

    .line 1393
    :cond_10
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1394
    const v2, 0x7f0d00e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1395
    .local v15, "buttonBar":Landroid/view/View;
    if-eqz v15, :cond_13

    .line 1396
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    const v2, 0x7f0d03f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 1398
    .local v14, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$10;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1404
    const v2, 0x7f0d03f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Button;

    .line 1405
    .local v33, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$11;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1411
    const v2, 0x7f0d00fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/SettingsActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$12;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1419
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1420
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1421
    .local v16, "buttonText":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1428
    .end local v16    # "buttonText":Ljava/lang/String;
    :cond_11
    :goto_6
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1429
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1430
    .restart local v16    # "buttonText":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1431
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1437
    .end local v16    # "buttonText":Ljava/lang/String;
    :cond_12
    :goto_7
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1438
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1442
    .end local v14    # "backButton":Landroid/widget/Button;
    .end local v15    # "buttonBar":Landroid/view/View;
    .end local v33    # "skipButton":Landroid/widget/Button;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->curOrientation:I

    .line 1443
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1445
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1449
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v24, v6, v34

    .line 1450
    .local v24, "delta":J
    const-string v2, "SettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .end local v24    # "delta":J
    :goto_8
    return-void

    .line 1154
    .end local v3    # "initialFragmentName":Ljava/lang/String;
    .end local v19    # "className":Ljava/lang/String;
    .end local v21    # "cn":Landroid/content/ComponentName;
    .end local v23    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v27    # "isSubSettings":Z
    .end local v28    # "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    .end local v31    # "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .end local v34    # "start":J
    :cond_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1155
    const v2, 0x7f0f0242

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 1198
    .restart local v3    # "initialFragmentName":Ljava/lang/String;
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v28    # "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    .restart local v31    # "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .restart local v34    # "start":J
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1212
    .restart local v19    # "className":Ljava/lang/String;
    .restart local v21    # "cn":Landroid/content/ComponentName;
    :cond_17
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 1227
    .restart local v23    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v27    # "isSubSettings":Z
    :cond_18
    const-class v2, Lcom/android/settings/search/ValueTrackerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1228
    const v2, 0x7f040229

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    goto :goto_8

    .line 1238
    :cond_19
    const-string v2, "SettingsActivity"

    const-string v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1243
    :cond_1a
    const v2, 0x7f0401d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 1244
    const v2, 0x7f0d02f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 1245
    const v2, 0x7f0d048e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mAddQuickSettings:Landroid/widget/TextView;

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mAddQuickSettings:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1251
    const v2, 0x7f0d048d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    .line 1252
    const v2, 0x7f0d048b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/CustomScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/CustomScrollView;->setScrollViewCallbacks(Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c01a8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mQuickSettingsHeight:I

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 1258
    :cond_1b
    const v2, 0x7f0401d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 1259
    const v2, 0x7f0d02f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 1260
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mAddQuickSettings:Landroid/widget/TextView;

    .line 1261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    .line 1263
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SettingsActivityWrapper;

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SubSettings;

    if-nez v2, :cond_b

    .line 1265
    const v2, 0x7f0d0491

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1266
    .local v18, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 1268
    .local v20, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f0f01ab

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v5

    if-eq v2, v5, :cond_1c

    const v2, 0x7f0f023f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v5

    if-eq v2, v5, :cond_1c

    const v2, 0x7f0f0244

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v5

    if-ne v2, v5, :cond_1d

    .line 1271
    :cond_1c
    const/4 v2, -0x2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1273
    :cond_1d
    const v2, 0x7f0d0490

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1274
    .local v29, "leftView":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1276
    .local v30, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f0d0492

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1277
    .local v13, "RightView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout$LayoutParams;

    .line 1279
    .local v32, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1280
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1281
    const/4 v2, 0x0

    move-object/from16 v0, v32

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1282
    const v2, 0x7f0d0490

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    const v2, 0x7f0d0492

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1322
    .end local v13    # "RightView":Landroid/view/View;
    .end local v18    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v20    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v29    # "leftView":Landroid/view/View;
    .end local v30    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_23

    .line 1325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_20

    .line 1326
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1335
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1336
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1337
    .local v4, "initialArguments":Landroid/os/Bundle;
    if-nez v27, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1338
    :cond_1f
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 1328
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_20
    if-eqz v27, :cond_21

    .line 1329
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1330
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_9

    .line 1332
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1333
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_9

    .line 1341
    .restart local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/SettingsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v4}, Lcom/android/settings/SettingsActivity$8;-><init>(Lcom/android/settings/SettingsActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 1348
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_24

    .line 1349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1351
    const v2, 0x7f0e01c3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1353
    const-class v2, Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardSummarySplit;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    goto/16 :goto_5

    .line 1355
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-nez v2, :cond_26

    .line 1357
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1359
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1361
    const v2, 0x7f0e01c3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1362
    if-eqz v27, :cond_25

    .line 1363
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 1367
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/SettingsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$9;-><init>(Lcom/android/settings/SettingsActivity;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 1375
    :cond_26
    const v2, 0x7f0e01c3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1376
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    goto/16 :goto_5

    .line 1425
    .restart local v14    # "backButton":Landroid/widget/Button;
    .restart local v15    # "buttonBar":Landroid/view/View;
    .restart local v16    # "buttonText":Ljava/lang/String;
    .restart local v33    # "skipButton":Landroid/widget/Button;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1434
    :cond_28
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    .line 899
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v1, :cond_1

    .line 901
    :cond_0
    const/4 v1, 0x0

    .line 905
    :goto_0
    return v1

    .line 903
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 904
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f140009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1931
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1932
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1935
    return-void
.end method

.method public onIsHidingHeaders()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3712
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 3714
    .local v0, "isSettingWizard":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    if-ne v0, v1, :cond_2

    .line 3718
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isSettingWizard":Z
    :cond_1
    move v0, v2

    .line 3712
    goto :goto_0

    .line 3718
    .restart local v0    # "isSettingWizard":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":android:no_headers"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3446
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3447
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 3448
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setAnimationSearchView(Z)V

    .line 3449
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 3452
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 3436
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3437
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-nez v0, :cond_0

    .line 3438
    invoke-direct {p0, v2}, Lcom/android/settings/SettingsActivity;->setAnimationSearchView(Z)V

    .line 3440
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 3442
    :cond_1
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 912
    if-eqz p1, :cond_1

    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "query":Ljava/lang/String;
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_2

    .line 918
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 922
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    .line 924
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 925
    :cond_1
    return-void

    .line 920
    .restart local v0    # "query":Ljava/lang/String;
    :cond_2
    const-string v1, "SettingsActivity"

    const-string v2, "mSearchView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1012
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d06cd

    if-ne v0, v1, :cond_0

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mEditQuickSettingExpanded:Z

    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->switchToEditFavoriteFragment()V

    .line 1017
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1921
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1922
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 1923
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 1927
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1928
    return-void
.end method

.method protected onPostResume()V
    .locals 5

    .prologue
    .line 1097
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1099
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mShowFotaView:Z

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1103
    .local v1, "isFirst":Z
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mShowFotaView:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1104
    sget-object v3, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_1

    .line 1105
    const v3, 0x7f0d048c

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    .line 1106
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    .line 1107
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1109
    const v3, 0x7f0d02de

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1110
    .local v2, "view":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/settings/SettingsActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    const v3, 0x7f0d00ee

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1123
    .local v0, "cancelView":Landroid/widget/ImageView;
    new-instance v3, Lcom/android/settings/SettingsActivity$6;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    .end local v0    # "cancelView":Landroid/widget/ImageView;
    .end local v2    # "view":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    const-string v3, "SettingsActivity"

    const-string v4, "Fota is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 770
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 771
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    const v3, 0x7f0e05f1

    .line 781
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 783
    const/4 v0, 0x1

    return v0

    .line 773
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    const v3, 0x7f0e01ff

    goto :goto_0

    .line 778
    :cond_2
    const v3, 0x7f0e01fd

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 3423
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 3424
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 3425
    const/4 v0, 0x0

    .line 3427
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 3415
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 3416
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 3417
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 3418
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 3419
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1737
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1738
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1739
    const-string v0, ":settings:key_fragment_title_knox"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 1741
    :cond_0
    const-string v0, ":settings:need_to_revert_to_initial_fragment"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1742
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_1

    .line 1743
    const-string v0, "settings"

    const-string v1, "revertToInitialFragment called in onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1746
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1749
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1750
    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v8, :cond_0

    .line 1751
    invoke-static {p0, v7}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 1753
    :cond_0
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 1755
    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v8, :cond_5

    .line 1757
    iget v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    if-nez v8, :cond_1

    .line 1758
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1761
    :cond_1
    iget v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    :cond_2
    iget v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4

    :cond_3
    iget v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_15

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_15

    :cond_4
    move v1, v7

    .line 1768
    .local v1, "featuresAvailable":Z
    :goto_0
    if-nez v1, :cond_5

    .line 1769
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1773
    .end local v1    # "featuresAvailable":Z
    :cond_5
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    if-nez v8, :cond_6

    .line 1775
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 1777
    :cond_6
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1779
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->populateKnoxCustomSettingsMap()V

    .line 1781
    :cond_7
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    if-nez v8, :cond_8

    .line 1783
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    .line 1785
    :cond_8
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1787
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->populateKnoxCustomProKioskSettingsMap()V

    .line 1790
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v3

    .line 1791
    .local v3, "newHomeActivityCount":I
    iget v8, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v3, v8, :cond_a

    .line 1792
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1793
    invoke-direct {p0, v7}, Lcom/android/settings/SettingsActivity;->invalidateCategories(Z)V

    .line 1795
    :cond_a
    new-instance v8, Lcom/android/settings/SettingsActivity$14;

    invoke-direct {v8, p0}, Lcom/android/settings/SettingsActivity$14;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1801
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1804
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v8, p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 1811
    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1812
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 1815
    :cond_b
    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->mIsEmerMode:Z

    if-eqz v8, :cond_c

    .line 1819
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1822
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v9, "show"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v11, "eng"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1825
    .local v4, "showDev":Z
    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->bOldShowDev:Z

    if-eq v8, v4, :cond_e

    .line 1826
    invoke-direct {p0, v7}, Lcom/android/settings/SettingsActivity;->invalidateCategories(Z)V

    .line 1827
    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v8, :cond_d

    .line 1828
    iput-boolean v7, p0, Lcom/android/settings/SettingsActivity;->bForceFocus:Z

    .line 1829
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v5

    .line 1830
    .local v5, "tabIndex":I
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    .line 1831
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1833
    .end local v5    # "tabIndex":I
    :cond_d
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->bOldShowDev:Z

    .line 1835
    :cond_e
    sget-boolean v7, Lcom/android/settings/SettingsActivity;->bReDrawTab:Z

    if-eqz v7, :cond_f

    .line 1836
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    .line 1837
    sput-boolean v6, Lcom/android/settings/SettingsActivity;->bReDrawTab:Z

    .line 1839
    :cond_f
    const-string v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume bReDrawTabAirplaneMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/settings/SettingsActivity;->bReDrawTabAirplaneMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const-string v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume mIsShowingDashboard : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    sget-boolean v7, Lcom/android/settings/SettingsActivity;->bReDrawTabAirplaneMode:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v7, :cond_10

    .line 1842
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    .line 1843
    sput-boolean v6, Lcom/android/settings/SettingsActivity;->bReDrawTabAirplaneMode:Z

    .line 1846
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1848
    .local v2, "fontIndex":I
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-eqz v7, :cond_11

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mFontIndex:I

    if-eq v7, v2, :cond_11

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v7, :cond_11

    .line 1849
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    .line 1850
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mFontIndex:I

    .line 1853
    :cond_11
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mAccessoriesMenuOpened:Z

    sget-object v8, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v8

    if-eq v7, v8, :cond_12

    .line 1855
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    .line 1856
    sget-object v7, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mAccessoriesMenuOpened:Z

    .line 1858
    :cond_12
    const-string v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume fromActSearch : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    if-nez v7, :cond_16

    .line 1860
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateOptionsMenu()V

    .line 1865
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_13

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    if-lez v6, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v6

    if-nez v6, :cond_13

    .line 1867
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.knox.containeragent2"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1875
    :cond_13
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings/SettingsActivity;->mForceRedraw:Z

    if-eqz v6, :cond_14

    .line 1876
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->redrawFavorite()V

    .line 1880
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1882
    const-string v6, "SettingsActivity"

    const-string v7, "onResume finished"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    return-void

    .end local v2    # "fontIndex":I
    .end local v3    # "newHomeActivityCount":I
    .end local v4    # "showDev":Z
    :cond_15
    move v1, v6

    .line 1761
    goto/16 :goto_0

    .line 1862
    .restart local v2    # "fontIndex":I
    .restart local v3    # "newHomeActivityCount":I
    .restart local v4    # "showDev":Z
    :cond_16
    iput-boolean v6, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    goto :goto_1

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1870
    .end local v0    # "e1":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 1871
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1706
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1707
    const-string v3, ":settings:categories"

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1709
    :cond_0
    const-string v3, ":settings:show_home_as_up"

    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1710
    const-string v3, ":settings:show_search"

    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1711
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState / mNeedToRevertToInitialFragment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-string v3, ":settings:need_to_revert_to_initial_fragment"

    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1713
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 1714
    const-string v3, ":settings:key_fragment_title_knox"

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1716
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v3, :cond_2

    .line 1722
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 1723
    .local v1, "isExpanded":Z
    :goto_0
    const-string v3, ":settings:search_menu_expanded"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1724
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1725
    .local v2, "query":Ljava/lang/String;
    :goto_1
    const-string v3, ":settings:search_query"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    .end local v1    # "isExpanded":Z
    .end local v2    # "query":Ljava/lang/String;
    :cond_2
    const-string v3, ":settings:home_activities_count"

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1729
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    :goto_2
    return-void

    .line 1722
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1724
    .restart local v1    # "isExpanded":Z
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 1731
    .end local v1    # "isExpanded":Z
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Settings"

    const-string v4, "Failure saving state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 888
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 889
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 890
    const-string v0, "Index"

    const-string v1, "revertToInitialFragment called in onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 893
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1480
    return-void
.end method

.method public openEditView()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 707
    :cond_0
    return-void
.end method

.method public openSearchView()V
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->openSearchView()V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public redrawFavorite()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2212
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-nez v3, :cond_2

    .line 2213
    const-string v0, "main_content2"

    .line 2214
    .local v0, "Tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardSummary;

    .line 2215
    .local v1, "fragment":Landroid/app/Fragment;
    instance-of v3, v1, Lcom/android/settings/dashboard/DashboardSummary;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 2216
    check-cast v2, Lcom/android/settings/dashboard/DashboardSummary;

    .line 2217
    .local v2, "summary":Lcom/android/settings/dashboard/DashboardSummary;
    if-eqz v2, :cond_0

    .line 2218
    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->redrawFavorite()V

    .line 2220
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mForceRedraw:Z

    .line 2222
    .end local v2    # "summary":Lcom/android/settings/dashboard/DashboardSummary;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    .line 2228
    .end local v0    # "Tag":Ljava/lang/String;
    .end local v1    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 2224
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mForceRedraw:Z

    .line 2225
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2226
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->drawDashboardTab()V

    goto :goto_0
.end method

.method public refreshQuickSettingsView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1885
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isHideQuickSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mFavoriteTilesCount:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_2

    .line 1889
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1899
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    if-eqz v0, :cond_1

    .line 1900
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1903
    :cond_1
    return-void

    .line 1893
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public registerAssistant()V
    .locals 5

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, "className":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    const-class v3, Lcom/android/settings/Settings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v3, :cond_0

    .line 1059
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1060
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ActivityName"

    const-string v4, "com.android.settings.Settings"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HIDE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1062
    :cond_2
    const-string v3, "IconName"

    const-string v4, "Search"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_1
    const-string v3, "register"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1067
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1069
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1070
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.android.settings.Favorite"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    const-string v3, "com.android.settings.Search"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    new-instance v3, Lcom/android/settings/SettingsActivity$AssistantReceiver;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$AssistantReceiver;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1073
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 1064
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v3, "IconName"

    const-string v4, "Search;Edit quick settings;"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public releaseView()V
    .locals 2

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    invoke-virtual {v0}, Lcom/android/settings/widget/CustomScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mQuickSettingsHeight:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3599
    :cond_0
    :goto_0
    return-void

    .line 3594
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getHidedViewRatio()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 3595
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mQuickSettingsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/CustomScrollView;->setScrollY(I)V

    goto :goto_0

    .line 3597
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/CustomScrollView;->setScrollY(I)V

    goto :goto_0
.end method

.method public scrollToHide()V
    .locals 2

    .prologue
    .line 1905
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    .line 1906
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isHideQuickSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1907
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    invoke-virtual {v0}, Lcom/android/settings/widget/CustomScrollView;->getIsFirstLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mFavoriteTilesCount:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mQuickSettingsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/CustomScrollView;->setScrollY(I)V

    .line 1910
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    invoke-virtual {v0}, Lcom/android/settings/widget/CustomScrollView;->invalidate()V

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mScrollView:Lcom/android/settings/widget/CustomScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/CustomScrollView;->setIsFirstLoading(Z)V

    .line 1915
    :cond_1
    return-void
.end method

.method public setFavoriteCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 765
    iput p1, p0, Lcom/android/settings/SettingsActivity;->mFavoriteTilesCount:I

    .line 766
    return-void
.end method

.method public setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .prologue
    .line 3701
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .line 3702
    return-void
.end method

.method public setRedrawTab()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/SettingsActivity;->bReDrawTab:Z

    .line 1144
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 3504
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 3505
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1698
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1699
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_0

    .line 1700
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1702
    :cond_0
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 3407
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 2147
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2148
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0d02f1

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2149
    if-eqz p2, :cond_0

    .line 2150
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 2151
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2155
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2156
    return-void

    .line 2153
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 18
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 2055
    const/4 v7, 0x0

    .line 2056
    .local v7, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 2057
    if-eqz p4, :cond_2

    .line 2058
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2064
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_3

    .line 2065
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p3

    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 2073
    :cond_1
    :goto_1
    return-void

    .line 2061
    :cond_2
    const-string v7, ""

    goto :goto_0

    .line 2068
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    if-eqz v1, :cond_1

    .line 2069
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings/dashboard/DashboardSummarySplit;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-virtual/range {v8 .. v17}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    goto :goto_1
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2098
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2099
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2114
    :goto_0
    return-void

    .line 2101
    :cond_0
    const/4 v4, 0x0

    .line 2102
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 2103
    if-eqz p4, :cond_2

    .line 2104
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2111
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 2107
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method public switchToEditFavoriteFragment()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 3507
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "CQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    sput-wide v6, Lcom/android/settings/Utils;->focusedFavoriteId:J

    .line 3509
    sput-wide v6, Lcom/android/settings/Utils;->focusedTileId:J

    .line 3510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mForceRedraw:Z

    .line 3512
    const-class v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 3514
    return-void
.end method

.method public switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f0d02f1

    .line 2162
    if-nez p1, :cond_0

    move-object v0, v5

    .line 2208
    :goto_0
    return-object v0

    .line 2163
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid fragment for this activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2167
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 2168
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 2169
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    const-class v4, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2170
    const-string v2, "main_content"

    .line 2171
    .local v2, "tag":Ljava/lang/String;
    const/high16 v4, 0x10b0000

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2172
    const v4, 0x7f0d0489

    invoke-virtual {v3, v4, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2194
    :goto_1
    if-eqz p4, :cond_2

    .line 2195
    const-string v4, ":settings:prefs"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2197
    :cond_2
    if-lez p5, :cond_8

    .line 2198
    invoke-virtual {v3, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 2202
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2203
    const-string v4, "SettingsActivity"

    const-string v6, "activity has already destoryed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 2204
    goto :goto_0

    .line 2177
    .end local v2    # "tag":Ljava/lang/String;
    :cond_4
    const-class v4, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2178
    const-string v2, "main_content2"

    .line 2179
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-virtual {v3, v7, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 2180
    .end local v2    # "tag":Ljava/lang/String;
    :cond_5
    const-class v4, Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2181
    const-string v2, "setting_main_view"

    .line 2182
    .restart local v2    # "tag":Ljava/lang/String;
    const v4, 0x7f0d048a

    invoke-virtual {v3, v4, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 2184
    .end local v2    # "tag":Ljava/lang/String;
    :cond_6
    const-string v2, "main_content2"

    .line 2185
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2186
    .local v1, "main_content2":Landroid/view/ViewGroup;
    if-nez v1, :cond_7

    .line 2188
    const-string v4, "SettingsActivity"

    const-string v6, "switchToFragment(), set settings_main_prefs for main_content2"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const v4, 0x7f0401d1

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 2190
    const v4, 0x7f0d0179

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/SwitchBar;

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 2192
    :cond_7
    invoke-virtual {v3, v7, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 2199
    .end local v1    # "main_content2":Landroid/view/ViewGroup;
    :cond_8
    if-eqz p6, :cond_3

    .line 2200
    invoke-virtual {v3, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_2

    .line 2206
    :cond_9
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2207
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0
.end method

.method public unregisterAssistant()V
    .locals 4

    .prologue
    .line 1077
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_0

    .line 1079
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1080
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ActivityName"

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1082
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1085
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1086
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOptionMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0d06cd

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 929
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 930
    .local v3, "query":Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    .line 931
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->bEnableTab:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "HIDE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 932
    :cond_0
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 935
    :goto_0
    const v5, 0x7f0d06cc

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 936
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-nez v5, :cond_2

    move v5, v6

    .line 970
    :goto_1
    return v5

    .line 934
    :cond_1
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    goto :goto_0

    .line 939
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 940
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v5, :cond_3

    move v5, v6

    .line 941
    goto :goto_1

    .line 944
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "android:id/search_src_text"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 946
    .local v1, "et":Landroid/widget/EditText;
    new-instance v2, Lcom/android/settings/Utils$LengthFilter;

    sget-object v5, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 947
    .local v2, "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/settings/Utils$LengthFilter;->setMaxLength(I)V

    .line 948
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 949
    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 953
    .end local v1    # "et":Landroid/widget/EditText;
    .end local v2    # "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0dd5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 954
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 955
    .local v4, "searchManager":Landroid/app/SearchManager;
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 957
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v5, :cond_4

    .line 958
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v8}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 960
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 961
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 962
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 963
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v5, :cond_5

    .line 964
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->expandActionView()Z

    .line 965
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    if-eqz v5, :cond_5

    .line 966
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 969
    :cond_5
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v5, v7

    .line 970
    goto/16 :goto_1

    .line 950
    .end local v4    # "searchManager":Landroid/app/SearchManager;
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 950
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public updateTabTileView(Lcom/android/settings/dashboard/DashboardCategory;Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "category"    # Lcom/android/settings/dashboard/DashboardCategory;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1537
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1538
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1539
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04008f

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1540
    .local v8, "categoryView":Landroid/view/View;
    const v0, 0x7f0d0168

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1541
    .local v7, "categoryContent":Landroid/view/ViewGroup;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 1542
    invoke-virtual {p1, v9}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v3

    .line 1543
    .local v3, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v11, Lcom/android/settings/dashboard/DashboardTileView;

    iget-wide v0, v3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v0, v0

    invoke-direct {v11, p2, v0}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;I)V

    .line 1544
    .local v11, "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    iget v6, v3, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 1546
    invoke-virtual {v11, v3}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 1547
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1541
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1549
    .end local v3    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v11    # "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_0
    return-object v8
.end method

.method public updateTilesList(Ljava/util/List;Ljava/lang/String;)V
    .locals 58
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2507
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    if-nez v53, :cond_0

    .line 2508
    const-string v53, "development"

    const/16 v54, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 2511
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    const-string v54, "show"

    sget-object v55, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v56, "eng"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    invoke-interface/range {v53 .. v55}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 2514
    .local v39, "showDev":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 2515
    .local v44, "start":J
    const-string v53, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/UserManager;

    .line 2518
    .local v49, "um":Landroid/os/UserManager;
    const/4 v15, 0x0

    .line 2519
    .local v15, "defaultMenuIdlist":[Ljava/lang/String;
    const/16 v48, 0x0

    .line 2520
    .local v48, "tileIndex":I
    const/16 v47, 0x0

    .line 2521
    .local v47, "tileId":I
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    .line 2522
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v29

    .line 2523
    .local v29, "isT4RMode":Z
    const-string v53, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 2524
    .local v6, "activityManager":Landroid/app/ActivityManager;
    new-instance v32, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v32 .. v32}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2526
    .local v32, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    const/16 v27, 0x0

    .line 2528
    .local v27, "isMassProduct":Z
    if-eqz v6, :cond_1

    .line 2529
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2531
    if-eqz v32, :cond_7

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide/from16 v54, v0

    const-wide/32 v56, 0x3b9aca00

    cmp-long v53, v54, v56

    if-gtz v53, :cond_7

    const/16 v27, 0x1

    .line 2533
    :goto_0
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "updateTilesList(): memoryInfo.totalMem ="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v54

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "updateTilesList(): isMassProduct ="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    :cond_1
    new-instance v33, Landroid/util/DisplayMetrics;

    invoke-direct/range {v33 .. v33}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2537
    .local v33, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v51

    .line 2539
    .local v51, "w":Landroid/view/WindowManager;
    if-eqz v51, :cond_3

    .line 2540
    invoke-interface/range {v51 .. v51}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2541
    if-eqz v33, :cond_3

    .line 2543
    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v53, v0

    const/16 v54, 0xf0

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    const/16 v54, 0x1e0

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v53, v0

    const/16 v54, 0x1e0

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_8

    :cond_2
    const/16 v27, 0x1

    .line 2548
    :cond_3
    :goto_1
    const-string v53, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_9

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v54, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v53 .. v54}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_9

    const/16 v26, 0x1

    .line 2551
    .local v26, "isForTmoEdge":Z
    :goto_2
    const-string v53, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_a

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v54, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v53 .. v54}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_a

    const/16 v25, 0x1

    .line 2554
    .local v25, "isForAttEdge":Z
    :goto_3
    const-string v53, "default_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_5

    .line 2555
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEF_QUICK_SETTINGS"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2556
    .local v14, "defaultMenuId":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 2557
    const-string v53, ";"

    move-object/from16 v0, v53

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2560
    :cond_4
    array-length v0, v15

    move/from16 v53, v0

    add-int/lit8 v48, v53, -0x1

    .line 2562
    .end local v14    # "defaultMenuId":Ljava/lang/String;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    .line 2563
    .local v42, "size":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_ae

    .line 2564
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/dashboard/DashboardCategory;

    .line 2566
    .local v10, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget-wide v0, v10, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v20, v0

    .line 2568
    .local v20, "id":I
    const-string v53, "default_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_b

    .line 2569
    const v53, 0x7f0d06a2

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_c

    .line 2563
    :cond_6
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2531
    .end local v10    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v19    # "i":I
    .end local v20    # "id":I
    .end local v25    # "isForAttEdge":Z
    .end local v26    # "isForTmoEdge":Z
    .end local v33    # "metrics":Landroid/util/DisplayMetrics;
    .end local v42    # "size":I
    .end local v51    # "w":Landroid/view/WindowManager;
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 2543
    .restart local v33    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v51    # "w":Landroid/view/WindowManager;
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 2548
    :cond_9
    const/16 v26, 0x0

    goto :goto_2

    .line 2551
    .restart local v26    # "isForTmoEdge":Z
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    .line 2572
    .restart local v10    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v19    # "i":I
    .restart local v20    # "id":I
    .restart local v25    # "isForAttEdge":Z
    .restart local v42    # "size":I
    :cond_b
    const-string v53, "easy_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_17

    .line 2573
    const v53, 0x7f0d06a3

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6

    .line 2585
    :cond_c
    invoke-virtual {v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v53

    add-int/lit8 v35, v53, -0x1

    .line 2586
    .local v35, "n":I
    :goto_6
    if-ltz v35, :cond_ad

    .line 2587
    move/from16 v0, v35

    invoke-virtual {v10, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v46

    .line 2588
    .local v46, "tile":Lcom/android/settings/dashboard/DashboardTile;
    const/16 v38, 0x0

    .line 2589
    .local v38, "removeTile":Z
    const/16 v43, 0x0

    .line 2590
    .local v43, "skipCheck":Z
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v20, v0

    .line 2592
    const-string v53, "default_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_f

    .line 2593
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    aget-object v54, v15, v48

    const-string v55, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v53 .. v56}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v47

    .line 2594
    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v56, v0

    cmp-long v53, v54, v56

    if-nez v53, :cond_1c

    .line 2595
    if-ltz v48, :cond_1b

    .line 2596
    if-lez v48, :cond_d

    .line 2597
    add-int/lit8 v48, v48, -0x1

    .line 2598
    :cond_d
    const v53, 0x7f0d069b

    move/from16 v0, v47

    move/from16 v1, v53

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isPHNModel()Z

    move-result v53

    if-nez v53, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isTPDModel()Z

    move-result v53

    if-eqz v53, :cond_1a

    .line 2599
    :cond_e
    const/16 v38, 0x1

    .line 2600
    const/16 v43, 0x1

    .line 2617
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v53, v0

    if-eqz v53, :cond_1f

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    move-object/from16 v53, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2619
    .local v17, "element":Ljava/lang/Integer;
    if-nez v17, :cond_1d

    .line 2621
    const/16 v38, 0x1

    .line 2622
    const/16 v43, 0x1

    .line 2655
    .end local v17    # "element":Ljava/lang/Integer;
    :cond_10
    :goto_8
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    move-object/from16 v53, v0

    if-eqz v53, :cond_11

    .line 2656
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, "MAIN"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_20

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_20

    const-string v53, "favorite_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_20

    .line 2657
    const/16 v38, 0x1

    .line 2658
    const/16 v43, 0x1

    .line 2665
    :cond_11
    :goto_9
    if-nez v43, :cond_13

    .line 2666
    const v53, 0x7f0d065a

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_12

    const v53, 0x7f0d067d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_21

    .line 2667
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2668
    const/16 v38, 0x1

    .line 3264
    :cond_13
    :goto_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v53

    if-nez v53, :cond_14

    .line 3266
    const/16 v38, 0x1

    .line 3268
    :cond_14
    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_T4R:[I

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v53

    if-nez v53, :cond_15

    .line 3270
    const/16 v38, 0x1

    .line 3272
    :cond_15
    if-eqz v38, :cond_16

    invoke-virtual {v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v53

    move/from16 v0, v35

    move/from16 v1, v53

    if-ge v0, v1, :cond_16

    .line 3273
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "remove : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    move/from16 v0, v35

    invoke-virtual {v10, v0}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 3276
    :cond_16
    add-int/lit8 v35, v35, -0x1

    .line 3277
    goto/16 :goto_6

    .line 2576
    .end local v35    # "n":I
    .end local v38    # "removeTile":Z
    .end local v43    # "skipCheck":Z
    .end local v46    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_17
    const-string v53, "main_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_18

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_18

    const-string v53, "favorite_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_c

    .line 2577
    :cond_18
    const v53, 0x7f0d06a2

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_19

    const v53, 0x7f0d06a3

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_c

    .line 2578
    :cond_19
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2579
    add-int/lit8 v19, v19, -0x1

    .line 2580
    add-int/lit8 v42, v42, -0x1

    .line 2581
    goto/16 :goto_5

    .line 2602
    .restart local v35    # "n":I
    .restart local v38    # "removeTile":Z
    .restart local v43    # "skipCheck":Z
    .restart local v46    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_1a
    const/16 v43, 0x1

    goto/16 :goto_7

    .line 2605
    :cond_1b
    const/16 v38, 0x1

    .line 2606
    const/16 v43, 0x1

    goto/16 :goto_7

    .line 2609
    :cond_1c
    const/16 v38, 0x1

    .line 2610
    const/16 v43, 0x1

    goto/16 :goto_7

    .line 2624
    .restart local v17    # "element":Ljava/lang/Integer;
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 2626
    .local v50, "val":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v53, v0

    and-int v53, v53, v50

    if-nez v53, :cond_1e

    .line 2628
    const/16 v38, 0x1

    .line 2629
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 2631
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v53, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    move/from16 v54, v0

    and-int v53, v53, v54

    if-eqz v53, :cond_10

    .line 2633
    const/16 v38, 0x1

    .line 2634
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 2639
    .end local v17    # "element":Ljava/lang/Integer;
    .end local v50    # "val":I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    move/from16 v53, v0

    if-eqz v53, :cond_10

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v53, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2641
    .restart local v17    # "element":Ljava/lang/Integer;
    if-eqz v17, :cond_10

    .line 2642
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 2644
    .restart local v50    # "val":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    move/from16 v53, v0

    and-int v53, v53, v50

    if-eqz v53, :cond_10

    .line 2646
    const/16 v38, 0x1

    .line 2647
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 2659
    .end local v17    # "element":Ljava/lang/Integer;
    .end local v50    # "val":I
    :cond_20
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, "KIOSKCONTAINER"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v53, v0

    if-eqz v53, :cond_11

    .line 2660
    const/16 v38, 0x1

    .line 2661
    const/16 v43, 0x1

    goto/16 :goto_9

    .line 2670
    :cond_21
    const v53, 0x7f0d0697

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_26

    .line 2671
    const-string v53, "easy_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_24

    .line 2672
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v53

    if-nez v53, :cond_22

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v53

    if-nez v53, :cond_23

    .line 2673
    :cond_22
    const/16 v38, 0x1

    .line 2683
    :cond_23
    :goto_b
    const v53, 0x7f020151

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 2684
    const/16 v53, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    goto/16 :goto_a

    .line 2676
    :cond_24
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_25

    .line 2677
    const-string v53, "com.android.settings.fuelgauge.PowerUsageSummary"

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 2678
    const/16 v53, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto :goto_b

    .line 2679
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v53

    if-nez v53, :cond_23

    .line 2680
    const/16 v38, 0x1

    goto :goto_b

    .line 2685
    :cond_26
    const v53, 0x7f0d069b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_2f

    .line 2686
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "CscFeature_Setting_ConfigTypeHelp: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v55

    const-string v56, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v55 .. v56}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "[0:dont support, 1:online, 2:ondevice]"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2a

    .line 2688
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_29

    .line 2689
    const-string v53, "SettingsActivity"

    const-string v54, "isSupportOfflineHelpMenu"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_27

    .line 2691
    const-string v53, "SettingsActivity"

    const-string v54, "non mass"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    new-instance v23, Landroid/content/Intent;

    const-string v53, "com.samsung.helphub.HELP"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2693
    .local v23, "intent":Landroid/content/Intent;
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2695
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_27
    const-string v53, "SettingsActivity"

    const-string v54, "mass"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const-string v53, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_28

    .line 2697
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "is mass. "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    new-instance v23, Landroid/content/Intent;

    const-string v53, "com.samsung.helphub.HELP"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2699
    .restart local v23    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2701
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_28
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "remove online help - is mass "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2706
    :cond_29
    const-string v53, "SettingsActivity"

    const-string v54, "remove online help -  is not SupportOfflineHelpMenu."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2709
    :cond_2a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v53

    if-nez v53, :cond_2b

    .line 2710
    const-string v53, "SettingsActivity"

    const-string v54, "remove online help -  help csc feature is 0"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2713
    :cond_2b
    const-string v53, "SettingsActivity"

    const-string v54, "help csc feature is 1"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    move-object/from16 v53, v0

    if-nez v53, :cond_2d

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2716
    .restart local v23    # "intent":Landroid/content/Intent;
    :goto_c
    const-string v5, "com.sec.android.app.sbrowser"

    .line 2717
    .local v5, "SBROWSER_PKG":Ljava/lang/String;
    const-string v4, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    .line 2719
    .local v4, "SBROWSER_CLASS":Ljava/lang/String;
    const-string v53, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_2c

    .line 2720
    const-string v53, "SettingsActivity"

    const-string v54, "browser is exist on device."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    new-instance v12, Landroid/content/ComponentName;

    const-string v53, "com.sec.android.app.sbrowser"

    const-string v54, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    .local v12, "component":Landroid/content/ComponentName;
    const/16 v31, 0x0

    .line 2725
    .local v31, "manualURL":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string v54, "online_manual_url"

    invoke-static/range {v53 .. v54}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 2729
    :goto_d
    if-eqz v31, :cond_2e

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v53

    if-lez v53, :cond_2e

    .line 2730
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2734
    :goto_e
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2735
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 2737
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v31    # "manualURL":Ljava/lang/String;
    :cond_2c
    invoke-static {}, Lcom/android/settings/Utils;->getResIdForUserManual()I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 2738
    const v53, 0x7f02018f

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 2739
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2740
    const-string v53, "SettingsActivity"

    const-string v54, "do not support browser."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2714
    .end local v4    # "SBROWSER_CLASS":Ljava/lang/String;
    .end local v5    # "SBROWSER_PKG":Ljava/lang/String;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_2d
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    goto :goto_c

    .line 2726
    .restart local v4    # "SBROWSER_CLASS":Ljava/lang/String;
    .restart local v5    # "SBROWSER_PKG":Ljava/lang/String;
    .restart local v12    # "component":Landroid/content/ComponentName;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v31    # "manualURL":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2727
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 2732
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_2e
    const-string v53, "http://www.samsung.com/m-manual/common"

    invoke-static/range {v53 .. v53}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_e

    .line 2744
    .end local v4    # "SBROWSER_CLASS":Ljava/lang/String;
    .end local v5    # "SBROWSER_PKG":Ljava/lang/String;
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v31    # "manualURL":Ljava/lang/String;
    :cond_2f
    const v53, 0x7f0d0650

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_30

    .line 2746
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "android.hardware.wifi"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2747
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2750
    :cond_30
    const v53, 0x7f0d064f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_32

    .line 2751
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_31

    .line 2752
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2756
    :cond_31
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.sec.sprint.wfc"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 2757
    .local v7, "appState":I
    const/16 v53, 0x2

    move/from16 v0, v53

    if-ne v7, v0, :cond_13

    .line 2758
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2760
    .end local v7    # "appState":I
    :catch_1
    move-exception v21

    .line 2761
    .local v21, "ie":Ljava/lang/IllegalArgumentException;
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Check to see if target device support Native VOWIFI: + "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.oem.smartwifisupport"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 2764
    .restart local v7    # "appState":I
    const/16 v53, 0x2

    move/from16 v0, v53

    if-ne v7, v0, :cond_13

    .line 2765
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2767
    .end local v7    # "appState":I
    :catch_2
    move-exception v22

    .line 2768
    .local v22, "ieWfc":Ljava/lang/IllegalArgumentException;
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2774
    .end local v21    # "ie":Ljava/lang/IllegalArgumentException;
    .end local v22    # "ieWfc":Ljava/lang/IllegalArgumentException;
    :cond_32
    const v53, 0x7f0d0651

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_34

    .line 2775
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isNotSupportOpenWifiCalling(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_33

    .line 2776
    const/16 v38, 0x1

    .line 2778
    :cond_33
    const-string v53, "ATT"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2780
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.sec.vowifispg"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v7

    .line 2781
    .restart local v7    # "appState":I
    const/16 v53, 0x2

    move/from16 v0, v53

    if-eq v7, v0, :cond_13

    .line 2782
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2783
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "android.intent.action.ACTIVATE_WIFI_CALLING"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2784
    new-instance v12, Landroid/content/ComponentName;

    const-string v53, "com.sec.vowifispg"

    const-string v54, "com.sec.vowifispg.VoWifiCheckActivity"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    .restart local v12    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2787
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2788
    const/16 v38, 0x0

    goto/16 :goto_a

    .line 2790
    .end local v7    # "appState":I
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v23    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v21

    .line 2791
    .restart local v21    # "ie":Ljava/lang/IllegalArgumentException;
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/16 v38, 0x1

    .line 2793
    goto/16 :goto_a

    .line 2795
    .end local v21    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_34
    const v53, 0x7f0d0652

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_35

    .line 2796
    const-string v53, "CTC"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2797
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2799
    :cond_35
    const v53, 0x7f0d0653

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_36

    .line 2800
    const-string v53, "CTC"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2801
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2803
    :cond_36
    const v53, 0x7f0d0659

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_39

    .line 2804
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v53

    if-eqz v53, :cond_37

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-nez v53, :cond_37

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v53

    if-eqz v53, :cond_38

    .line 2805
    :cond_37
    const/16 v38, 0x1

    .line 2807
    :cond_38
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2808
    const v53, 0x7f0e140b

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 2810
    :cond_39
    const v53, 0x7f0d0654

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_3a

    .line 2812
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "android.hardware.bluetooth"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2813
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2815
    :cond_3a
    const v53, 0x7f0d0656

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_43

    .line 2816
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v53, v0

    if-nez v53, :cond_42

    const/16 v28, 0x1

    .line 2818
    .local v28, "isSecondaryUser":Z
    :goto_f
    const-string v53, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 2820
    .local v11, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v53

    if-eqz v53, :cond_3b

    .line 2821
    const v53, 0x7f0e074b

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 2823
    :cond_3b
    if-nez v28, :cond_3e

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v53

    if-eqz v53, :cond_3e

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_3e

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_3c

    const-string v53, "AIO"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_3e

    :cond_3c
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_3d

    const-string v53, "ATT"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_3e

    :cond_3d
    const-string v53, "SBM"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_3f

    .line 2825
    :cond_3e
    const/16 v38, 0x1

    .line 2827
    :cond_3f
    const-string v53, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 2828
    .local v52, "wm":Landroid/net/wifi/WifiManager;
    new-instance v34, Landroid/os/Message;

    invoke-direct/range {v34 .. v34}, Landroid/os/Message;-><init>()V

    .line 2829
    .local v34, "msg":Landroid/os/Message;
    const/16 v53, 0x15

    move/from16 v0, v53

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->what:I

    .line 2830
    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mTetheredData:I

    .line 2831
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "mTetheredData: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mTetheredData:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v53

    if-eqz v53, :cond_41

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mTetheredData:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ge v0, v1, :cond_41

    .line 2834
    :cond_40
    const/16 v38, 0x1

    .line 2837
    :cond_41
    const-string v53, "no_config_tethering"

    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2838
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2816
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v28    # "isSecondaryUser":Z
    .end local v34    # "msg":Landroid/os/Message;
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_42
    const/16 v28, 0x0

    goto/16 :goto_f

    .line 2840
    :cond_43
    const v53, 0x7f0d0655

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_44

    .line 2841
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2842
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2844
    :cond_44
    const v53, 0x7f0d067f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_45

    .line 2845
    const-string v53, "com.samsung.app.jansky"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2846
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2848
    :cond_45
    const v53, 0x7f0d0658

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_46

    .line 2850
    const-string v53, "network_management"

    invoke-static/range {v53 .. v53}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v36

    .line 2853
    .local v36, "netManager":Landroid/os/INetworkManagementService;
    :try_start_4
    invoke-interface/range {v36 .. v36}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    move-result v53

    if-nez v53, :cond_13

    .line 2854
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2859
    .end local v36    # "netManager":Landroid/os/INetworkManagementService;
    :cond_46
    const v53, 0x7f0d065c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_4b

    .line 2860
    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2861
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_47

    .line 2862
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2863
    :cond_47
    const-string v53, "CDMA"

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2864
    const-string v53, "gsm.sim.currentcardstatus"

    const/16 v54, 0x0

    const-string v55, "9"

    invoke-static/range {v53 .. v55}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2865
    .local v8, "cardStatus1":Ljava/lang/String;
    const-string v53, "gsm.sim.currentcardstatus"

    const/16 v54, 0x1

    const-string v55, "9"

    invoke-static/range {v53 .. v55}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2866
    .local v9, "cardStatus2":Ljava/lang/String;
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2867
    .restart local v23    # "intent":Landroid/content/Intent;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 2868
    .local v40, "simState1":I
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2871
    .local v41, "simState2":I
    const/16 v53, 0x3

    move/from16 v0, v40

    move/from16 v1, v53

    if-ne v0, v1, :cond_48

    const/16 v53, 0x3

    move/from16 v0, v41

    move/from16 v1, v53

    if-ne v0, v1, :cond_48

    .line 2872
    const-string v53, "com.android.phone"

    const-string v54, "com.android.phone.MobileNetworkSettingsTab"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2880
    :goto_10
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2873
    :cond_48
    const/16 v53, 0x3

    move/from16 v0, v40

    move/from16 v1, v53

    if-eq v0, v1, :cond_49

    const/16 v53, 0x3

    move/from16 v0, v41

    move/from16 v1, v53

    if-eq v0, v1, :cond_49

    .line 2874
    const/16 v38, 0x1

    goto :goto_10

    .line 2876
    :cond_49
    const-string v53, "com.android.phone"

    const-string v54, "com.android.phone.MobileNetworkSettings"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2877
    const/16 v53, 0x3

    move/from16 v0, v41

    move/from16 v1, v53

    if-ne v0, v1, :cond_4a

    const/16 v30, 0x1

    .line 2878
    .local v30, "mExtra":I
    :goto_11
    const-string v53, "sim_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_10

    .line 2877
    .end local v30    # "mExtra":I
    :cond_4a
    const/16 v30, 0x0

    goto :goto_11

    .line 2883
    .end local v8    # "cardStatus1":Ljava/lang/String;
    .end local v9    # "cardStatus2":Ljava/lang/String;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v40    # "simState1":I
    .end local v41    # "simState2":I
    :cond_4b
    const v53, 0x7f0d0662

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_4d

    .line 2885
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v53, v0

    if-eqz v53, :cond_4c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v53

    if-nez v53, :cond_4c

    .line 2886
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2887
    :cond_4c
    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2888
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2891
    :cond_4d
    const v53, 0x7f0d065e

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_4f

    .line 2893
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "android.hardware.nfc"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_4e

    .line 2894
    const/16 v38, 0x1

    .line 2907
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2908
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2911
    :cond_4f
    const v53, 0x7f0d0657

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_50

    .line 2913
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2920
    :cond_50
    const v53, 0x7f0d065b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_51

    .line 2921
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 2922
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2924
    :cond_51
    const v53, 0x7f0d0680

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_53

    .line 2925
    const-string v53, "DCM"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_52

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isDocomoSettingsDisabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2926
    :cond_52
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2928
    :cond_53
    const v53, 0x7f0d0681

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_55

    .line 2929
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v53

    if-eqz v53, :cond_54

    .line 2930
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2931
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "com.kddi.android.au_setting_menu"

    const-string v54, "com.kddi.android.au_setting_menu.MainActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2932
    const-string v53, "mode"

    const-string v54, "Start"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2933
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2935
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_54
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2937
    :cond_55
    const v53, 0x7f0d067c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_58

    .line 2938
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_56

    .line 2939
    const/16 v38, 0x1

    .line 2944
    :cond_56
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v53

    if-eqz v53, :cond_57

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_57

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2948
    :cond_57
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2950
    :cond_58
    const v53, 0x7f0d0686

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5a

    .line 2951
    const-string v53, "com.samsung.android.myeventcenter"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_59

    .line 2952
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2953
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2954
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2956
    :cond_5a
    const v53, 0x7f0d0672

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5b

    .line 2957
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2958
    :cond_5b
    const v53, 0x7f0d068e

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5e

    .line 2959
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_5d

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-nez v53, :cond_5d

    if-eqz v27, :cond_5c

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_5d

    :cond_5c
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2961
    :cond_5d
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2963
    :cond_5e
    const v53, 0x7f0d0699

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5f

    .line 2964
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2965
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2969
    :cond_5f
    const v53, 0x7f0d066a

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_60

    .line 2970
    const v53, 0x7f0e1373

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 2971
    :cond_60
    const v53, 0x7f0d066d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_61

    .line 2972
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2973
    :cond_61
    const v53, 0x7f0d004c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_62

    .line 2974
    const-string v53, "com.android.settings.notification.NotificationSettings"

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    goto/16 :goto_a

    .line 2975
    :cond_62
    const v53, 0x7f0d066f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_63

    .line 2976
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2977
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2983
    :cond_63
    const v53, 0x7f0d0679

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_64

    .line 2984
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v53

    if-nez v53, :cond_13

    .line 2985
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2987
    :cond_64
    const v53, 0x7f0d0665

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_66

    .line 2988
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_65

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2989
    :cond_65
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2991
    :cond_66
    const v53, 0x7f0d0678

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_68

    .line 2992
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_67

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v53

    if-nez v53, :cond_13

    .line 2993
    :cond_67
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2995
    :cond_68
    const v53, 0x7f0d0666

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6a

    .line 2996
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_69

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2997
    :cond_69
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2999
    :cond_6a
    const v53, 0x7f0d067a

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6b

    .line 3000
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3001
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3003
    :cond_6b
    const v53, 0x7f0d0667

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6d

    .line 3004
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_6c

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3005
    :cond_6c
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3007
    :cond_6d
    const v53, 0x7f0d067b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6e

    .line 3008
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3009
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3013
    :cond_6e
    const v53, 0x7f0d0668

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_70

    .line 3014
    invoke-static {}, Lcom/android/settings/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_6f

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3015
    :cond_6f
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3017
    :cond_70
    const v53, 0x7f0d0699

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_71

    .line 3018
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3019
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3021
    :cond_71
    const v53, 0x7f0d0692

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_72

    .line 3022
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3023
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3025
    :cond_72
    const v53, 0x7f0d069c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_75

    .line 3026
    if-nez v39, :cond_73

    const-string v53, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_74

    const-string v53, "ro.boot_recovery"

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0x4

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_74

    :cond_73
    const-string v53, "no_debugging_features"

    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3028
    :cond_74
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3030
    :cond_75
    const v53, 0x7f0d069e

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_78

    .line 3031
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_76

    .line 3032
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3033
    :cond_76
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_77

    .line 3034
    const-string v53, "SettingsActivity"

    const-string v54, "Sprint Samsung FOTA devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    const-string v53, "com.android.settings.SoftwareUpdateSettings"

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    goto/16 :goto_a

    .line 3037
    :cond_77
    const-string v53, "SettingsActivity"

    const-string v54, "Sprint Samsung non-FOTA devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 3039
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "com.samsung.intent.action.OMADM.SPRINTUPDATE"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3040
    const/high16 v53, 0x10200000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3041
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3043
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_78
    const v53, 0x7f0d069d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_79

    .line 3044
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3045
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3046
    :cond_79
    const v53, 0x7f0d066b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7a

    .line 3051
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3052
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3054
    :cond_7a
    const v53, 0x7f0d066c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7b

    .line 3056
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3058
    :cond_7b
    const v53, 0x7f0d06a0

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7d

    .line 3059
    const-string v53, "VZW"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7c

    const-string v53, "LRA"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7c

    .line 3060
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3063
    :cond_7c
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.wssyncmldm"

    const/16 v55, 0x0

    invoke-virtual/range {v53 .. v55}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3064
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3065
    :catch_4
    move-exception v16

    .line 3066
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v53, "SettingsActivity"

    const-string v54, "Verizon OMADM devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 3068
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3069
    const/high16 v53, 0x10200000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3070
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3073
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_7d
    const v53, 0x7f0d06a1

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7f

    .line 3074
    const-string v53, "TFN"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7e

    .line 3075
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3078
    :cond_7e
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.wssyncmldm"

    const/16 v55, 0x0

    invoke-virtual/range {v53 .. v55}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3079
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3080
    :catch_5
    move-exception v16

    .line 3081
    .restart local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v53, "SettingsActivity"

    const-string v54, "Verizon OMADM devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 3083
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3084
    const/high16 v53, 0x10200000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3085
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3088
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_7f
    const v53, 0x7f0d0660

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_84

    .line 3089
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v53

    if-nez v53, :cond_80

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v53

    if-nez v53, :cond_80

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v53

    if-eqz v53, :cond_81

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_81

    :cond_80
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v53

    if-eqz v53, :cond_82

    .line 3091
    :cond_81
    const/16 v38, 0x1

    .line 3093
    :cond_82
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v53

    if-nez v53, :cond_83

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3094
    :cond_83
    const v53, 0x7f0e1269

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 3096
    :cond_84
    const v53, 0x7f0d0682

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_86

    .line 3097
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_85

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3099
    :cond_85
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3101
    :cond_86
    const v53, 0x7f0d068a

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_88

    .line 3102
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v53

    if-eqz v53, :cond_87

    const-string v53, "com.skt.t_smart_charge"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3104
    :cond_87
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3106
    :cond_88
    const v53, 0x7f0d0661

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_89

    .line 3107
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3108
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3110
    :cond_89
    const v53, 0x7f0d001a

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8b

    .line 3111
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_8a

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3112
    :cond_8a
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3114
    :cond_8b
    const v53, 0x7f0d0674

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8c

    .line 3115
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v54, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v53 .. v54}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3116
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3118
    :cond_8c
    const v53, 0x7f0d068c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8e

    .line 3123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v53, v0

    if-eqz v53, :cond_8d

    .line 3124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v53, v0

    and-int/lit8 v53, v53, 0x4

    if-nez v53, :cond_13

    .line 3125
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3129
    :cond_8d
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isSupportPrivacyAndSafetyMenu(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    const-string v53, "VZW"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsEmerMode:Z

    move/from16 v53, v0

    if-nez v53, :cond_13

    const-string v53, "favorite_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_13

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3130
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3135
    :cond_8e
    const v53, 0x7f0d0676

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_13

    .line 3139
    const v53, 0x7f0d0677

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8f

    .line 3141
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3143
    :cond_8f
    const v53, 0x7f0d068b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_93

    .line 3144
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isSupportPrivacyAndSafetyMenu(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_90

    .line 3145
    const/16 v38, 0x1

    .line 3147
    :cond_90
    const-string v53, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_92

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_92

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-nez v53, :cond_91

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_92

    .line 3149
    :cond_91
    const/16 v38, 0x1

    .line 3151
    :cond_92
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->getPrivacyAndSafetyTitle(Landroid/content/Context;)I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 3152
    :cond_93
    const v53, 0x7f0d0691

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_95

    .line 3153
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v53

    if-nez v53, :cond_94

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3155
    :cond_94
    const v53, 0x7f0e1535

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 3157
    :cond_95
    const v53, 0x7f0d0693

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_96

    .line 3158
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3159
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3161
    :cond_96
    const v53, 0x7f0d0675

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_97

    .line 3162
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3163
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3167
    :cond_97
    const v53, 0x7f0d0673

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_9b

    .line 3168
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_98

    .line 3169
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3172
    :cond_98
    new-instance v23, Landroid/content/Intent;

    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3173
    .restart local v23    # "intent":Landroid/content/Intent;
    new-instance v53, Landroid/content/ComponentName;

    const-string v54, "com.bst.airmessage"

    const-string v55, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct/range {v53 .. v55}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3176
    const/16 v24, 0x1

    .line 3178
    .local v24, "isCoverAttached":Z
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_99

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v53

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_9a

    .line 3179
    :cond_99
    const/16 v24, 0x0

    .line 3182
    :cond_9a
    const-string v53, "S View cover attached"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3183
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3187
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v24    # "isCoverAttached":Z
    :cond_9b
    const v53, 0x7f0d0684

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_9d

    .line 3188
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v53

    if-nez v53, :cond_9c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_13

    .line 3191
    :cond_9c
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3193
    :cond_9d
    const v53, 0x7f0d0685

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a0

    .line 3194
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v55, "none"

    invoke-virtual/range {v53 .. v55}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v54, "theme"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_9f

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v53

    if-nez v53, :cond_9e

    invoke-static {}, Lcom/android/settings/Utils;->isPreloadedThemeSupported()Z

    move-result v53

    if-eqz v53, :cond_9f

    :cond_9e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string v54, "easy_mode_switch"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    if-nez v53, :cond_13

    .line 3197
    :cond_9f
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3201
    :cond_a0
    const v53, 0x7f0d065d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a2

    .line 3203
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isVzwVoLTEFeatureEnabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_a1

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3204
    :cond_a1
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3206
    :cond_a2
    const v53, 0x7f0d0689

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a4

    .line 3207
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_a3

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_a3

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3208
    :cond_a3
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3210
    :cond_a4
    const v53, 0x7f0d068d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a6

    .line 3211
    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_a5

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v53

    if-nez v53, :cond_a5

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_a5

    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v53

    if-nez v53, :cond_a5

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isSupportPrivateBoxInSettings(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3212
    :cond_a5
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3214
    :cond_a6
    const v53, 0x7f0d0690

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a7

    .line 3215
    const-string v53, "no_modify_accounts"

    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3216
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3220
    :cond_a7
    const v53, 0x7f0d065f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a8

    .line 3221
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3222
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3227
    :cond_a8
    const v53, 0x7f0d068f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_aa

    .line 3228
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v53

    if-eqz v53, :cond_a9

    .line 3229
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3230
    :cond_a9
    const-string v53, "easy_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3231
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v53

    if-eqz v53, :cond_13

    .line 3232
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3235
    :cond_aa
    const v53, 0x7f0d0687

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_13

    .line 3236
    const-string v53, "VZW"

    sget-object v54, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_ab

    .line 3237
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3239
    :cond_ab
    const-string v53, "ro.product.name"

    invoke-static/range {v53 .. v53}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3241
    .local v37, "productName":Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3242
    .local v18, "homeIntent":Landroid/content/Intent;
    const-string v53, "android.intent.category.HOME"

    move-object/from16 v0, v18

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const/high16 v54, 0x10000

    move-object/from16 v0, v53

    move-object/from16 v1, v18

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v53

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3245
    .local v13, "currentLauncherPackageName":Ljava/lang/String;
    const-string v53, "Current launcher Package Name:"

    move-object/from16 v0, v53

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    new-instance v23, Landroid/content/Intent;

    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3248
    .restart local v23    # "intent":Landroid/content/Intent;
    new-instance v53, Landroid/content/ComponentName;

    const-string v54, "com.sec.android.app.launcher"

    const-string v55, "com.android.launcher2.Launcher"

    invoke-direct/range {v53 .. v55}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3250
    const-string v53, "android.intent.category.HOME"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3251
    const/high16 v53, 0x10000000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3252
    const-string v53, "StartEdit"

    const/16 v54, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3254
    const-string v53, "com.sec.android.app.launcher"

    move-object/from16 v0, v53

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_ac

    sget-object v53, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v53

    if-eqz v53, :cond_ac

    .line 3257
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3259
    :cond_ac
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3278
    .end local v13    # "currentLauncherPackageName":Ljava/lang/String;
    .end local v18    # "homeIntent":Landroid/content/Intent;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v37    # "productName":Ljava/lang/String;
    .end local v38    # "removeTile":Z
    .end local v43    # "skipCheck":Z
    .end local v46    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_ad
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsActivity;->addExternalTiles(Ljava/util/List;)V

    .line 3279
    invoke-virtual {v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v53

    if-nez v53, :cond_6

    .line 3280
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3281
    add-int/lit8 v19, v19, -0x1

    .line 3282
    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_5

    .line 2856
    .restart local v36    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v38    # "removeTile":Z
    .restart local v43    # "skipCheck":Z
    .restart local v46    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :catch_6
    move-exception v53

    goto/16 :goto_a

    .line 3285
    .end local v10    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v20    # "id":I
    .end local v35    # "n":I
    .end local v36    # "netManager":Landroid/os/INetworkManagementService;
    .end local v38    # "removeTile":Z
    .end local v43    # "skipCheck":Z
    .end local v46    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_ae
    return-void
.end method
