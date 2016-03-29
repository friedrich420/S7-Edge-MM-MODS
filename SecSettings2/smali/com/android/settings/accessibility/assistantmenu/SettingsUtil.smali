.class public Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field public static mIconImgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mIconStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mNotPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPrefsDefaltValueWcursor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mShortImgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mShortImgMap:Ljava/util/HashMap;

    .line 33
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020073

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020076

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020079

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02007d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02007f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e0a37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e05e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "0"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "1"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "2"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "3"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "4"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "5"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "6"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "7"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "8"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "9"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "10"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "11"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "0"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "1"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "2"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string v1, "3"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "0"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "1"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "2"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "3"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "4"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "5"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "6"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "7"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "8"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "9"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "10"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "11"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "0"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "1"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    const-string v1, "2"

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddOptionalMenuIfNeed(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "bResult":Z
    const/4 v1, 0x0

    .line 127
    .local v1, "findHoverZoom":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 128
    sget-object v3, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 127
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    if-nez v1, :cond_2

    .line 134
    sget-object v3, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    .line 140
    :cond_2
    return v0
.end method
