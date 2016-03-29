.class public Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;
.super Ljava/lang/Object;
.source "AssistantMenuUIAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    }
.end annotation


# static fields
.field public static actImageResourceMap:Ljava/util/HashMap;
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

.field public static actStringResourceMap:Ljava/util/HashMap;
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

.field static tempCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f020093

    const/4 v3, 0x0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    .line 75
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ShortCut:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02008d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    .line 99
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e0a37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ShortCut:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e05e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0e15af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sput v3, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->tempCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method
