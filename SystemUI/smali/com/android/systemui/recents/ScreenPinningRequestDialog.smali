.class public Lcom/android/systemui/recents/ScreenPinningRequestDialog;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mDialog:Landroid/app/AlertDialog;


# instance fields
.field public DEVICE_TYPE_WIFI_ONLY:Z

.field private filter:Landroid/content/IntentFilter;

.field private mAactivityLabel:Ljava/lang/String;

.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    .line 129
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    .line 44
    return-void

    :cond_0
    move v0, v1

    .line 42
    goto :goto_0
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 168
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 169
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 171
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 172
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 173
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 176
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearPrompt()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "Recents_ScreenPinningRequestDialog"

    const-string v1, "clearPrompt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->unregisterReceivers()V

    .line 50
    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 53
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 114
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->checkUnableToPin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0d047f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    const-string v0, "Recents_ScreenPinningRequestDialog"

    const-string v1, "checkUnableToPin is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    .line 127
    return-void

    .line 121
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->startLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "Recents_ScreenPinningRequestDialog"

    const-string v1, "registerReceivers - mContext is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showPrompt(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "activityLabel"    # Ljava/lang/String;
    .param p2, "isExcluded"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->registerReceivers()V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    .line 60
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "NEW_LINE":Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d047d

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "title":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0476

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "description_1":Ljava/lang/String;
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->DEVICE_TYPE_TABLET:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0478

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "description_2":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    .line 73
    .local v6, "hasPermanentMenuKey":Z
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v9, :cond_2

    .line 74
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 75
    .local v1, "accessibilityEnabled":Z
    const-string v9, "Recents_ScreenPinningRequestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "accessibilityEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_2
    if-eqz v6, :cond_4

    .line 82
    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d047c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "description_3":Ljava/lang/String;
    :goto_3
    const/4 v7, 0x5

    .line 92
    .local v7, "theme":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 93
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    if-eqz p2, :cond_6

    .line 96
    const v9, 0x7f0d047e

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 97
    const v9, 0x104000a

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    :goto_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 105
    sget-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 106
    sget-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 108
    sget-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 109
    const-string v9, "Recents_ScreenPinningRequestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showPrompt isExcluded : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 61
    .end local v1    # "accessibilityEnabled":Z
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "description_1":Ljava/lang/String;
    .end local v4    # "description_2":Ljava/lang/String;
    .end local v5    # "description_3":Ljava/lang/String;
    .end local v6    # "hasPermanentMenuKey":Z
    .end local v7    # "theme":I
    .end local v8    # "title":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0475

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 65
    .restart local v3    # "description_1":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0477

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 77
    .restart local v4    # "description_2":Ljava/lang/String;
    .restart local v6    # "hasPermanentMenuKey":Z
    :cond_2
    const/4 v1, 0x0

    .line 78
    .restart local v1    # "accessibilityEnabled":Z
    const-string v9, "Recents_ScreenPinningRequestDialog"

    const-string v10, "mAccessibilityService is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 82
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d047a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 86
    :cond_4
    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d047b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "description_3":Ljava/lang/String;
    :goto_5
    goto/16 :goto_3

    .end local v5    # "description_3":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0479

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 99
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v5    # "description_3":Ljava/lang/String;
    .restart local v7    # "theme":I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    const v9, 0x7f0d0480

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    const v9, 0x7f0d0365

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4
.end method

.method public unregisterReceivers()V
    .locals 3

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v1, "Recents_ScreenPinningRequestDialog"

    const-string v2, "unregisterReceivers - mContext is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
