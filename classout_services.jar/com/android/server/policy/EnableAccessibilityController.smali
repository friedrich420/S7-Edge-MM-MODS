.class public Lcom/android/server/policy/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# static fields
.field private static final ENABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x1770

.field public static final MESSAGE_ENABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_SPEAK_ENABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final SAMSUNG_SCREEN_READER:Ljava/lang/String; = "com.samsung.android.app.talkback"

.field private static final SCREEN_READER:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "EnableAccessibilityController"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private final mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onAccessibilityEnabledCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/EnableAccessibilityController$1;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 100
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, mWindowManager:Landroid/view/IWindowManager;

    .line 103
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 124
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    .line 126
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 127
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/server/policy/EnableAccessibilityController$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/EnableAccessibilityController$2;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, mTts:Landroid/speech/tts/TextToSpeech;

    .line 135
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, mTone:Landroid/media/Ringtone;

    .line 136
    iget-object v0, p0, mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, mTouchSlop:F

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/EnableAccessibilityController;

    .prologue
    .line 59
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/EnableAccessibilityController;

    .prologue
    .line 59
    iget-object v0, p0, mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/EnableAccessibilityController;Landroid/content/Context;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/EnableAccessibilityController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/EnableAccessibilityController;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/EnableAccessibilityController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, turnOnTalkback(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/EnableAccessibilityController;

    .prologue
    .line 59
    iget-object v0, p0, mTone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/EnableAccessibilityController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/EnableAccessibilityController;

    .prologue
    .line 59
    iget-boolean v0, p0, mDestroyed:Z

    return v0
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 145
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const-string v3, "com.samsung.android.app.talkback"

    invoke-static {p0, v3}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_22

    invoke-static {p0}, isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 157
    :cond_21
    :goto_21
    return v1

    :cond_22
    move v1, v2

    .line 146
    goto :goto_21

    .line 150
    :cond_24
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    move v1, v2

    .line 153
    goto :goto_21

    .line 157
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4d

    invoke-static {p0}, getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_4d
    move v1, v2

    goto :goto_21
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 250
    iput-boolean v1, p0, mCanceled:Z

    .line 251
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 252
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    :cond_11
    :goto_11
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    return-void

    .line 253
    :cond_17
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 254
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11
.end method

.method private enableAccessibility()V
    .registers 20

    .prologue
    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 744
    .local v14, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 812
    :goto_10
    return-void

    .line 747
    :cond_11
    const/4 v9, 0x0

    .line 749
    .local v9, "keyguardLocked":Z
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_11b

    move-result v9

    .line 754
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_101

    const/4 v7, 0x1

    .line 756
    .local v7, "hasMoreThanOneUser":Z
    :goto_33
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 757
    .local v11, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v0, v11, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_104

    const/4 v5, 0x1

    .line 760
    .local v5, "enableTouchExploration":Z
    :goto_46
    if-nez v5, :cond_5f

    .line 761
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .line 762
    .local v12, "serviceCount":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_4d
    if-ge v8, v12, :cond_5f

    .line 763
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 764
    .local v3, "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v0, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_107

    .line 766
    const/4 v5, 0x1

    .line 767
    move-object v11, v3

    .line 773
    .end local v3    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v8    # "i":I
    .end local v12    # "serviceCount":I
    :cond_5f
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 774
    .local v13, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .local v4, "componentName":Landroid/content/ComponentName;
    if-eqz v9, :cond_7c

    if-nez v7, :cond_10b

    .line 776
    :cond_7c
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    .line 777
    .local v16, "userId":I
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, "enabledServiceString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 780
    .local v10, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v17, "enabled_accessibility_services"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v10, v0, v6, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 784
    const-string/jumbo v17, "touch_exploration_granted_accessibility_services"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v10, v0, v6, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 788
    if-eqz v5, :cond_b2

    .line 789
    const-string/jumbo v17, "touch_exploration_enabled"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 793
    :cond_b2
    const-string v17, "accessibility_script_injection"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 796
    const-string v17, "accessibility_enabled"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 798
    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.samsung.settings.action.talkback_toggled"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v15, "talk_back_off":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 809
    .end local v6    # "enabledServiceString":Ljava/lang/String;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "talk_back_off":Landroid/content/Intent;
    .end local v16    # "userId":I
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0xfffff

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_10

    .line 754
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "enableTouchExploration":Z
    .end local v7    # "hasMoreThanOneUser":Z
    .end local v11    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_101
    const/4 v7, 0x0

    goto/16 :goto_33

    .line 757
    .restart local v7    # "hasMoreThanOneUser":Z
    .restart local v11    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_104
    const/4 v5, 0x0

    goto/16 :goto_46

    .line 762
    .restart local v3    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v5    # "enableTouchExploration":Z
    .restart local v8    # "i":I
    .restart local v12    # "serviceCount":I
    :cond_107
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4d

    .line 800
    .end local v3    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v8    # "i":I
    .end local v12    # "serviceCount":I
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_10b
    if-eqz v9, :cond_e4

    .line 802
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v0, v0, mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_118} :catch_119

    goto :goto_e4

    .line 804
    :catch_119
    move-exception v17

    goto :goto_e4

    .line 750
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "enableTouchExploration":Z
    .end local v7    # "hasMoreThanOneUser":Z
    .end local v11    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_11b
    move-exception v17

    goto/16 :goto_1c
.end method

.method private getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    const/16 v0, 0x3a

    .line 267
    .local v0, "ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR":C
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 269
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enabled_accessibility_services"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1c

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 288
    :cond_1b
    return-object v4

    .line 275
    :cond_1c
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 276
    .local v4, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .line 277
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 279
    :cond_25
    :goto_25
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 280
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 283
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_25

    .line 284
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method private static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 169
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 183
    .local v1, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_14

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.app.talkback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    .line 191
    .end local v1    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_42
    return-object v2
.end method

.method private static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 731
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 733
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_7
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    .line 738
    :goto_a
    return v1

    .line 734
    :catch_b
    move-exception v0

    .line 735
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 736
    const-string v3, "EnableAccessibilityController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "talkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 388
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    const/4 v1, 0x1

    .line 392
    :cond_1f
    :goto_1f
    return v1

    .line 388
    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private turnOffScreenReader(Landroid/content/Context;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOnOffScreenReader(context)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/16 v4, 0x3a

    .line 588
    .local v4, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v15, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 589
    .local v15, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-direct/range {p0 .. p1}, getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 591
    .local v9, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v9, v0, :cond_24

    .line 592
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 595
    .restart local v9    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_24
    const-string v17, "com.samsung.android.app.screenreader/com.samsung.android.app.screenreader.ScreenReaderService"

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 596
    .local v16, "toggledService":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 598
    .local v5, "accessibilityEnabled":Z
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 600
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 601
    .local v14, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_39
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 602
    .local v8, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_39

    .line 604
    const/4 v5, 0x1

    .line 610
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    :cond_4c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v10, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_55
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_72

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 616
    .restart local v8    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 619
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    :cond_72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 620
    .local v11, "enabledServicesBuilderLength":I
    if-lez v11, :cond_7f

    .line 621
    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 624
    :cond_7f
    const/4 v12, 0x0

    .line 625
    .local v12, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "enabled_accessibility_services"

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 630
    if-eqz v12, :cond_ad

    .line 631
    move-object v6, v15

    .line 632
    .local v6, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 634
    :cond_9c
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ad

    .line 635
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    .line 636
    .local v7, "componentNameString":Ljava/lang/String;
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 638
    .restart local v8    # "enabledService":Landroid/content/ComponentName;
    if-eqz v8, :cond_9c

    .line 639
    const/4 v5, 0x1

    .line 647
    .end local v6    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v7    # "componentNameString":Ljava/lang/String;
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    if-eqz v5, :cond_e1

    const/16 v17, 0x1

    :goto_b7
    const/16 v20, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "enabled_accessibility_samsung_screen_reader"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "direct_samsung_screen_reader"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 653
    return-void

    .line 647
    :cond_e1
    const/16 v17, 0x0

    goto :goto_b7
.end method

.method private turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "option_flag"    # I

    .prologue
    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 403
    .local v13, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v17, p2, 0x20

    if-lez v17, :cond_47

    .line 404
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v17, "assistant_menu"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 406
    new-instance v5, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v5, "assistantMenu":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.assistantmenu"

    const-string v19, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 409
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 410
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v5    # "assistantMenu":Landroid/content/Intent;
    :cond_47
    and-int/lit8 v17, p2, 0x10

    if-lez v17, :cond_138

    .line 415
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v17, "air_motion_engine"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 417
    new-instance v3, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v3, "air_motion_changed":Landroid/content/Intent;
    const-string/jumbo v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 420
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c5

    .line 421
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 422
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v11, "motion_changed_callaccept":Landroid/content/Intent;
    const-string/jumbo v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 426
    .end local v11    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_c5
    const-string/jumbo v17, "master_motion"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_138

    .line 427
    const-string v17, "air_motion_turn"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 428
    const-string v17, "air_motion_scroll"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 430
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v12, "motion_changed_scroll":Landroid/content/Intent;
    const-string/jumbo v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 434
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v10, "motion_changed_browse":Landroid/content/Intent;
    const-string/jumbo v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 441
    .end local v3    # "air_motion_changed":Landroid/content/Intent;
    .end local v10    # "motion_changed_browse":Landroid/content/Intent;
    .end local v12    # "motion_changed_scroll":Landroid/content/Intent;
    :cond_138
    and-int/lit8 v17, p2, 0x8

    if-lez v17, :cond_1a1

    .line 442
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v17, "air_view_master_onoff"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 444
    const-string/jumbo v17, "pen_hovering"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 445
    const-string/jumbo v17, "finger_air_view"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 446
    const-string/jumbo v17, "finger_air_view_highlight"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 448
    new-instance v6, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v6, "finger_air_view_changed":Landroid/content/Intent;
    const-string/jumbo v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 454
    .end local v6    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_1a1
    and-int/lit8 v17, p2, 0x40

    if-lez v17, :cond_1f3

    .line 455
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v17, "access_control_use"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 457
    const-string v17, "access_control_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 458
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v7, "icIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.accesscontrol"

    const-string v19, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 461
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 462
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v7    # "icIntent":Landroid/content/Intent;
    :cond_1f3
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-lez v17, :cond_26b

    .line 467
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v17, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_456

    .line 470
    const-string/jumbo v17, "sound_detector"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 472
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v9, "mIntent":Landroid/content/Intent;
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 474
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.settings.action.sound_detector"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 476
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v14, "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.sounddetector"

    const-string v19, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 479
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 495
    .end local v9    # "mIntent":Landroid/content/Intent;
    .end local v14    # "sdIntent":Landroid/content/Intent;
    :cond_263
    :goto_263
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_26b
    and-int/lit8 v17, p2, 0x4

    if-lez v17, :cond_287

    .line 500
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string/jumbo v17, "pen_hovering"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 505
    :cond_287
    and-int/lit8 v17, p2, 0x2

    if-lez v17, :cond_30b

    .line 506
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string/jumbo v17, "intelligent_sleep_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 508
    const-string/jumbo v17, "intelligent_rotation_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 509
    const-string/jumbo v17, "smart_pause"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 510
    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_PAUSE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v15, "smart_pause_changed":Landroid/content/Intent;
    const-string/jumbo v17, "isEnable"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 512
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 513
    const-string/jumbo v17, "smart_scroll"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 514
    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v16, "smart_scroll_changed":Landroid/content/Intent;
    const-string/jumbo v17, "isEnable"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 520
    .end local v15    # "smart_pause_changed":Landroid/content/Intent;
    .end local v16    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_30b
    and-int/lit8 v17, p2, 0x1

    if-lez v17, :cond_327

    .line 521
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string/jumbo v17, "multi_window_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 526
    :cond_327
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-lez v17, :cond_356

    .line 527
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string/jumbo v17, "pen_writing_buddy"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 529
    const-string v17, "air_button_onoff"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 532
    :cond_356
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-lez v17, :cond_376

    .line 533
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - 0x100"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string/jumbo v17, "surface_palm_swipe"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 538
    :cond_376
    const-string v17, "any_screen_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3a7

    .line 540
    const-string/jumbo v17, "sidesoftkey_switch"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 545
    :cond_3a7
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-lez v17, :cond_3e4

    .line 546
    new-instance v4, Landroid/content/Intent;

    const-string v17, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v4, "all_sound_off_intent":Landroid/content/Intent;
    const-string v17, "all_sound_off"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 548
    const-string/jumbo v17, "mute"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 550
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - TurnOffAllSound in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v4    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_3e4
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v17, v0

    if-lez v17, :cond_3f7

    .line 555
    invoke-direct/range {p0 .. p1}, turnOffScreenReader(Landroid/content/Context;)V

    .line 556
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - Screen reader off in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3f7
    const v17, 0x8000

    and-int v17, v17, p2

    if-lez v17, :cond_419

    .line 561
    const-string/jumbo v17, "universal_switch_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 562
    invoke-direct/range {p0 .. p1}, turnOffUniversalInput(Landroid/content/Context;)V

    .line 563
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffTalkBackExclusiveOptions - Universal switch off in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_419
    const/high16 v17, 0x20000

    and-int v17, v17, p2

    if-lez v17, :cond_437

    .line 568
    const-string/jumbo v17, "finger_magnifier"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 569
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffMagnifier - Magnifier off in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_437
    const/high16 v17, 0x40000

    and-int v17, v17, p2

    if-lez v17, :cond_455

    .line 574
    const-string/jumbo v17, "people_stripe"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 575
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOffPeopleEdge - 0x40000"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_455
    return-void

    .line 480
    :cond_456
    const-string v17, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_263

    .line 481
    const-string/jumbo v17, "sound_detector"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 482
    const-string/jumbo v17, "doorbell_detector"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 484
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v8, "mDoorIntent":Landroid/content/Intent;
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.settings.action.doorbell_detector"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 488
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .restart local v14    # "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.advsounddetector"

    const-string v19, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 492
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto/16 :goto_263
.end method

.method private turnOffUniversalInput(Landroid/content/Context;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 661
    const-string v17, "EnableAccessibilityController"

    const-string/jumbo v18, "turnOnOffScreenReader(context)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v4, 0x3a

    .line 664
    .local v4, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v15, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 665
    .local v15, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-direct/range {p0 .. p1}, getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 667
    .local v9, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v9, v0, :cond_24

    .line 668
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 671
    .restart local v9    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_24
    const-string v17, "com.samsung.android.universalswitch/com.samsung.android.universalswitch.SwitchControlService"

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 672
    .local v16, "toggledService":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 674
    .local v5, "accessibilityEnabled":Z
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 676
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 677
    .local v14, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_39
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 678
    .local v8, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_39

    .line 680
    const/4 v5, 0x1

    .line 686
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    :cond_4c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v10, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_55
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_72

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 692
    .restart local v8    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 695
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    :cond_72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 696
    .local v11, "enabledServicesBuilderLength":I
    if-lez v11, :cond_7f

    .line 697
    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 700
    :cond_7f
    const/4 v12, 0x0

    .line 701
    .local v12, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "enabled_accessibility_services"

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 706
    if-eqz v12, :cond_ad

    .line 707
    move-object v6, v15

    .line 708
    .local v6, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 710
    :cond_9c
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ad

    .line 711
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, "componentNameString":Ljava/lang/String;
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 714
    .restart local v8    # "enabledService":Landroid/content/ComponentName;
    if-eqz v8, :cond_9c

    .line 715
    const/4 v5, 0x1

    .line 723
    .end local v6    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v7    # "componentNameString":Ljava/lang/String;
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    if-eqz v5, :cond_d3

    const/16 v17, 0x1

    :goto_b7
    const/16 v20, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "universal_switch_enabled"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 727
    return-void

    .line 723
    :cond_d3
    const/16 v17, 0x0

    goto :goto_b7
.end method

.method private turnOnTalkback(Landroid/content/Context;Ljava/lang/String;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 299
    const/16 v4, 0x3a

    .line 300
    .local v4, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".TalkBackService"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    .line 302
    .local v17, "toggledService":Landroid/content/ComponentName;
    new-instance v16, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v18, 0x3a

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 303
    .local v16, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-direct/range {p0 .. p1}, getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 305
    .local v9, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v15, 0x0

    .line 307
    .local v15, "keyguardLocked":Z
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_44} :catch_12b

    move-result v15

    .line 312
    :goto_45
    move-object/from16 v0, p0

    iget-object v0, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_99

    const/4 v13, 0x1

    .line 314
    .local v13, "hasMoreThanOneUser":Z
    :goto_5c
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_69

    .line 315
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 318
    .restart local v9    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_69
    const/4 v5, 0x0

    .line 320
    .local v5, "accessibilityEnabled":Z
    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    if-eqz v15, :cond_73

    if-nez v13, :cond_10d

    .line 323
    :cond_73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v10, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_7c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 329
    .local v8, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 312
    .end local v5    # "accessibilityEnabled":Z
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    .end local v10    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v13    # "hasMoreThanOneUser":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_99
    const/4 v13, 0x0

    goto :goto_5c

    .line 332
    .restart local v5    # "accessibilityEnabled":Z
    .restart local v10    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .restart local v13    # "hasMoreThanOneUser":Z
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_9b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 333
    .local v11, "enabledServicesBuilderLength":I
    if-lez v11, :cond_a8

    .line 334
    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 337
    :cond_a8
    const/4 v12, 0x0

    .line 338
    .local v12, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "enabled_accessibility_services"

    const/16 v20, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 343
    if-eqz v12, :cond_d7

    .line 344
    move-object/from16 v6, v16

    .line 345
    .local v6, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 347
    :cond_c6
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d7

    .line 348
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "componentNameString":Ljava/lang/String;
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 351
    .restart local v8    # "enabledService":Landroid/content/ComponentName;
    if-eqz v8, :cond_c6

    .line 352
    const/4 v5, 0x1

    .line 359
    .end local v6    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v7    # "componentNameString":Ljava/lang/String;
    .end local v8    # "enabledService":Landroid/content/ComponentName;
    :cond_d7
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.samsung.settings.action.talkback_toggled"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "accessibility_enabled"

    if-eqz v5, :cond_10a

    const/16 v18, 0x1

    :goto_f3
    const/16 v21, -0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 374
    .end local v10    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "enabledServicesBuilderLength":I
    .end local v12    # "enabledServicesSetting":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_100
    :goto_100
    move-object/from16 v0, p0

    iget-object v0, v0, mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 375
    return-void

    .line 362
    .restart local v10    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "enabledServicesBuilderLength":I
    .restart local v12    # "enabledServicesSetting":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_10a
    const/16 v18, 0x0

    goto :goto_f3

    .line 364
    .end local v10    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "enabledServicesBuilderLength":I
    .end local v12    # "enabledServicesSetting":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_10d
    if-eqz v15, :cond_100

    .line 365
    const-string v18, "EnableAccessibilityController"

    const-string/jumbo v19, "turnOnTalkback - keyguardLocked"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_117
    move-object/from16 v0, p0

    iget-object v0, v0, mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_128
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_128} :catch_129

    goto :goto_100

    .line 369
    :catch_129
    move-exception v18

    goto :goto_100

    .line 308
    .end local v5    # "accessibilityEnabled":Z
    .end local v13    # "hasMoreThanOneUser":Z
    :catch_12b
    move-exception v18

    goto/16 :goto_45
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, mDestroyed:Z

    .line 196
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 201
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, mFirstPointerDownX:F

    .line 202
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, mFirstPointerDownY:F

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, mSecondPointerDownX:F

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, mSecondPointerDownY:F

    .line 205
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    :goto_37
    return v0

    :cond_38
    move v0, v1

    goto :goto_37
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 216
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 217
    .local v0, "action":I
    iget-boolean v4, p0, mCanceled:Z

    if-eqz v4, :cond_13

    .line 218
    if-ne v0, v8, :cond_12

    .line 219
    iput-boolean v5, p0, mCanceled:Z

    .line 246
    :cond_12
    :goto_12
    return v8

    .line 223
    :cond_13
    packed-switch v0, :pswitch_data_5e

    :pswitch_16
    goto :goto_12

    .line 230
    :pswitch_17
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, mFirstPointerDownX:F

    iget v7, p0, mFirstPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v1

    .line 232
    .local v1, "firstPointerMove":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_34

    .line 233
    invoke-direct {p0}, cancel()V

    .line 235
    :cond_34
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, mSecondPointerDownX:F

    iget v7, p0, mSecondPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v3

    .line 237
    .local v3, "secondPointerMove":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    .line 238
    invoke-direct {p0}, cancel()V

    goto :goto_12

    .line 225
    .end local v1    # "firstPointerMove":F
    .end local v3    # "secondPointerMove":F
    :pswitch_52
    const/4 v4, 0x2

    if-le v2, v4, :cond_12

    .line 226
    invoke-direct {p0}, cancel()V

    goto :goto_12

    .line 243
    :pswitch_59
    invoke-direct {p0}, cancel()V

    goto :goto_12

    .line 223
    nop

    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_17
        :pswitch_59
        :pswitch_16
        :pswitch_52
        :pswitch_59
    .end packed-switch
.end method
