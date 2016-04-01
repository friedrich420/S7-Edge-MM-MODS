.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_OnStartGestureWakeup:I = 0x22

.field static final TRANSACTION_OnStopGestureWakeup:I = 0x23

.field static final TRANSACTION_addAccessibilityInteractionConnection:I = 0x6

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_assistantMenuRegister:I = 0x17

.field static final TRANSACTION_assistantMenuUpdate:I = 0x16

.field static final TRANSACTION_disableMagnifier:I = 0x1d

.field static final TRANSACTION_enableMagnifier:I = 0x1b

.field static final TRANSACTION_enableMagnifierByDisplayID:I = 0x1c

.field static final TRANSACTION_getClearableActiveNotificationsCount:I = 0x24

.field static final TRANSACTION_getEnabledAccessibilityServiceList:I = 0x4

.field static final TRANSACTION_getInstalledAccessibilityServiceList:I = 0x3

.field static final TRANSACTION_getWindowToken:I = 0xb

.field static final TRANSACTION_interrupt:I = 0x5

.field static final TRANSACTION_isColorBlind:I = 0xd

.field static final TRANSACTION_isScreenCurtainRunning:I = 0x14

.field static final TRANSACTION_isTwoFingerGestureRecognitionEnabled:I = 0x11

.field static final TRANSACTION_isUniversalSwitchEnabled:I = 0x12

.field static final TRANSACTION_openGlobalActions:I = 0x1a

.field static final TRANSACTION_reboot:I = 0x19

.field static final TRANSACTION_registerGestureListenerForLauncher:I = 0x20

.field static final TRANSACTION_registerUiTestAutomationService:I = 0x8

.field static final TRANSACTION_removeAccessibilityInteractionConnection:I = 0x7

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final TRANSACTION_setColorBlind:I = 0xc

.field static final TRANSACTION_setMagnificationSpec:I = 0x1e

.field static final TRANSACTION_setScreenCurtain:I = 0x15

.field static final TRANSACTION_setTalkbackMode:I = 0x13

.field static final TRANSACTION_setTwoFingerGestureRecognitionEnabled:I = 0x1f

.field static final TRANSACTION_setmDNIeAccessibilityMode:I = 0x10

.field static final TRANSACTION_setmDNIeColorBlind:I = 0xe

.field static final TRANSACTION_setmDNIeNegative:I = 0xf

.field static final TRANSACTION_shutdown:I = 0x18

.field static final TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xa

.field static final TRANSACTION_unregisterGestureListenerForLauncher:I = 0x21

.field static final TRANSACTION_unregisterUiTestAutomationService:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_370

    .line 431
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 48
    :sswitch_a
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v4

    .line 59
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_2c
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_51

    .line 68
    sget-object v8, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 74
    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v4

    .line 76
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v4, :cond_4d

    move v6, v7

    :cond_4d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_51
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_3f

    .line 82
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_53
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    .line 86
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_67
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v5

    .line 98
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_7f
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, interrupt(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 113
    .end local v0    # "_arg0":I
    :sswitch_90
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 117
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 119
    .local v1, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    move-result v4

    .line 121
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_b5
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {p0, v0}, removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 136
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :sswitch_ca
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 140
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .line 142
    .local v1, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f1

    .line 143
    sget-object v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 148
    .local v2, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_e9
    invoke-virtual {p0, v0, v1, v2}, registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 146
    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_f1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_e9

    .line 154
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_f3
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 157
    .local v0, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p0, v0}, unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 163
    .end local v0    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_108
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12a

    .line 166
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 172
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12c

    move v1, v7

    .line 173
    .local v1, "_arg1":Z
    :goto_122
    invoke-virtual {p0, v0, v1}, temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 169
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :cond_12a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11b

    :cond_12c
    move v1, v6

    .line 172
    goto :goto_122

    .line 179
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12e
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, getWindowToken(I)Landroid/os/IBinder;

    move-result-object v4

    .line 183
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 189
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/os/IBinder;
    :sswitch_143
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_162

    move v0, v7

    .line 193
    .local v0, "_arg0":Z
    :goto_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 194
    .local v1, "_arg1":F
    invoke-virtual {p0, v0, v1}, setColorBlind(ZF)Z

    move-result v4

    .line 195
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v4, :cond_15d

    move v6, v7

    :cond_15d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":F
    .end local v4    # "_result":Z
    :cond_162
    move v0, v6

    .line 191
    goto :goto_14f

    .line 201
    :sswitch_164
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 204
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, isColorBlind([I)Z

    move-result v4

    .line 205
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v4, :cond_177

    move v6, v7

    :cond_177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 211
    .end local v0    # "_arg0":[I
    .end local v4    # "_result":Z
    :sswitch_17c
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19b

    move v0, v7

    .line 215
    .local v0, "_arg0":Z
    :goto_188
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 216
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, setmDNIeColorBlind(Z[I)Z

    move-result v4

    .line 217
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v4, :cond_196

    move v6, v7

    :cond_196
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[I
    .end local v4    # "_result":Z
    :cond_19b
    move v0, v6

    .line 213
    goto :goto_188

    .line 223
    :sswitch_19d
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1b8

    move v0, v7

    .line 226
    .restart local v0    # "_arg0":Z
    :goto_1a9
    invoke-virtual {p0, v0}, setmDNIeNegative(Z)Z

    move-result v4

    .line 227
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v4, :cond_1b3

    move v6, v7

    :cond_1b3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1b8
    move v0, v6

    .line 225
    goto :goto_1a9

    .line 233
    :sswitch_1ba
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1d9

    move v1, v7

    .line 238
    .local v1, "_arg1":Z
    :goto_1ca
    invoke-virtual {p0, v0, v1}, setmDNIeAccessibilityMode(IZ)Z

    move-result v4

    .line 239
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v4, :cond_1d4

    move v6, v7

    :cond_1d4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_1d9
    move v1, v6

    .line 237
    goto :goto_1ca

    .line 245
    .end local v0    # "_arg0":I
    :sswitch_1db
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, isTwoFingerGestureRecognitionEnabled()Z

    move-result v4

    .line 247
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v4, :cond_1ea

    move v6, v7

    :cond_1ea
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 253
    .end local v4    # "_result":Z
    :sswitch_1ef
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, isUniversalSwitchEnabled()Z

    move-result v4

    .line 255
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v4, :cond_1fe

    move v6, v7

    :cond_1fe
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 261
    .end local v4    # "_result":Z
    :sswitch_203
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, setTalkbackMode()V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 268
    :sswitch_210
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, isScreenCurtainRunning()Z

    move-result v4

    .line 270
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_21f

    move v6, v7

    :cond_21f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 276
    .end local v4    # "_result":Z
    :sswitch_224
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, setScreenCurtain()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 283
    :sswitch_231
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24c

    .line 286
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 291
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_244
    invoke-virtual {p0, v0}, assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 289
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_24c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_244

    .line 297
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_24e
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 300
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, assistantMenuRegister(Landroid/os/IBinder;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 306
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_25f
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_273

    move v0, v7

    .line 309
    .local v0, "_arg0":Z
    :goto_26b
    invoke-virtual {p0, v0}, shutdown(Z)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_273
    move v0, v6

    .line 308
    goto :goto_26b

    .line 315
    :sswitch_275
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_289

    move v0, v7

    .line 318
    .restart local v0    # "_arg0":Z
    :goto_281
    invoke-virtual {p0, v0}, reboot(Z)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_289
    move v0, v6

    .line 317
    goto :goto_281

    .line 324
    :sswitch_28b
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, openGlobalActions()V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 331
    :sswitch_298
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 338
    .local v2, "_arg2":F
    invoke-virtual {p0, v0, v1, v2}, enableMagnifier(IIF)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 344
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :sswitch_2b1
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 352
    .restart local v2    # "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, enableMagnifierByDisplayID(IIFI)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 359
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":I
    :sswitch_2ce
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, disableMagnifier()V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 366
    :sswitch_2db
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f6

    .line 369
    sget-object v6, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 374
    .local v0, "_arg0":Landroid/view/MagnificationSpec;
    :goto_2ee
    invoke-virtual {p0, v0}, setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 372
    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    :cond_2f6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_2ee

    .line 380
    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_2f8
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_30c

    move v0, v7

    .line 383
    .local v0, "_arg0":Z
    :goto_304
    invoke-virtual {p0, v0}, setTwoFingerGestureRecognitionEnabled(Z)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_30c
    move v0, v6

    .line 382
    goto :goto_304

    .line 389
    :sswitch_30e
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 392
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, registerGestureListenerForLauncher(Landroid/os/IBinder;)Z

    move-result v4

    .line 393
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v4, :cond_321

    move v6, v7

    :cond_321
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 399
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_326
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, unregisterGestureListenerForLauncher()V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 406
    :sswitch_333
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, OnStartGestureWakeup()Z

    move-result v4

    .line 408
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v4, :cond_342

    move v6, v7

    :cond_342
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 414
    .end local v4    # "_result":Z
    :sswitch_347
    const-string v8, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, OnStopGestureWakeup()Z

    move-result v4

    .line 416
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v4, :cond_356

    move v6, v7

    :cond_356
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 422
    .end local v4    # "_result":Z
    :sswitch_35b
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, getClearableActiveNotificationsCount(Ljava/lang/String;)I

    move-result v4

    .line 426
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 44
    :sswitch_data_370
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_53
        0x4 -> :sswitch_67
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_90
        0x7 -> :sswitch_b5
        0x8 -> :sswitch_ca
        0x9 -> :sswitch_f3
        0xa -> :sswitch_108
        0xb -> :sswitch_12e
        0xc -> :sswitch_143
        0xd -> :sswitch_164
        0xe -> :sswitch_17c
        0xf -> :sswitch_19d
        0x10 -> :sswitch_1ba
        0x11 -> :sswitch_1db
        0x12 -> :sswitch_1ef
        0x13 -> :sswitch_203
        0x14 -> :sswitch_210
        0x15 -> :sswitch_224
        0x16 -> :sswitch_231
        0x17 -> :sswitch_24e
        0x18 -> :sswitch_25f
        0x19 -> :sswitch_275
        0x1a -> :sswitch_28b
        0x1b -> :sswitch_298
        0x1c -> :sswitch_2b1
        0x1d -> :sswitch_2ce
        0x1e -> :sswitch_2db
        0x1f -> :sswitch_2f8
        0x20 -> :sswitch_30e
        0x21 -> :sswitch_326
        0x22 -> :sswitch_333
        0x23 -> :sswitch_347
        0x24 -> :sswitch_35b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
