.class public final Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# static fields
.field private static expectingBluetoothOn:Z

.field private static mDialogExist:Z

.field private static mIsDestroyed:Z


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    .line 65
    sput-boolean v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    .line 66
    sput-boolean v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return p0
.end method

.method private isShareListenChecked()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 319
    .local v1, "in":Landroid/content/Intent;
    const-string v3, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 320
    .local v0, "filterType":I
    const-string v3, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHN SPEC : filterType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 324
    :cond_0
    const-string v2, "CheckBluetoothStateActivity"

    const-string v3, "CHN SPEC : type is ShareListen Via"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, 0x1

    .line 327
    :cond_1
    return v2
.end method

.method private launchDevicePicker()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 266
    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "launchDevicePicker "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 269
    .local v4, "in":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "btIntent":Landroid/content/Intent;
    const-string v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 272
    .local v7, "needAuth":Z
    const-string v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 275
    .local v2, "filterType":I
    const-string v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 278
    .local v3, "fromHeadsetActivity":Z
    const-string v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "launchPackage":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 282
    const-string v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    :cond_0
    const-string v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "launchClass":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 287
    const-string v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 295
    return-void

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startActivity() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processEnableResult()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 248
    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "processEnableResult ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    sput-boolean v3, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    .line 252
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    .end local v0    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const-string v1, "CheckBluetoothStateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v1, 0x7f040045

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->setContentView(I)V

    .line 135
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z

    .line 136
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    .line 138
    sget-boolean v1, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 245
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    .line 143
    new-instance v18, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;-><init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    .local v18, "t":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 158
    const-string v1, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 159
    .local v2, "uri":Landroid/net/Uri;
    const/4 v15, 0x1

    .line 160
    .local v15, "isBluetoothEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isBluetoothEnabled"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 162
    .local v10, "cr":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 164
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    const-string v1, "isBluetoothEnabled"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    const/4 v15, 0x1

    .line 172
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    :goto_2
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 177
    .local v4, "edmUri":Landroid/net/Uri;
    const/16 v17, 0x1

    .line 178
    .local v17, "isSettingsChangesAllowed":Z
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "false"

    aput-object v3, v7, v1

    .line 179
    .local v7, "selectionArgsFalse":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "isSettingsChangesAllowed"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 181
    .local v12, "edmCr":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 183
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    const-string v1, "isSettingsChangesAllowed"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_5

    const/16 v17, 0x1

    .line 191
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_2
    :goto_4
    if-eqz v17, :cond_3

    if-nez v15, :cond_6

    .line 196
    :cond_3
    const-string v1, "CheckBluetoothStateActivity"

    const-string v3, "onCreate Bluetooth disable"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const v1, 0x7f0e0155

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto/16 :goto_0

    .line 165
    .end local v4    # "edmUri":Landroid/net/Uri;
    .end local v7    # "selectionArgsFalse":[Ljava/lang/String;
    .end local v12    # "edmCr":Landroid/database/Cursor;
    .end local v17    # "isSettingsChangesAllowed":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v11

    .line 168
    .local v11, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_2
    const-string v1, "CheckBluetoothStateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 169
    .end local v11    # "e":Landroid/database/CursorWindowAllocationException;
    :catch_1
    move-exception v11

    .line 170
    .local v11, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    const-string v1, "CheckBluetoothStateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorIndexOutOfBoundsException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v11    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 184
    .restart local v4    # "edmUri":Landroid/net/Uri;
    .restart local v7    # "selectionArgsFalse":[Ljava/lang/String;
    .restart local v12    # "edmCr":Landroid/database/Cursor;
    .restart local v17    # "isSettingsChangesAllowed":Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    .line 186
    :catch_2
    move-exception v11

    .line 187
    .local v11, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_4
    const-string v1, "CheckBluetoothStateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 188
    .end local v11    # "e":Landroid/database/CursorWindowAllocationException;
    :catch_3
    move-exception v11

    .line 189
    .local v11, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_5
    const-string v1, "CheckBluetoothStateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorIndexOutOfBoundsException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 191
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .end local v11    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_1
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 204
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_7

    .line 206
    const-string v1, "CheckBluetoothStateActivity"

    const-string v3, "Bluetooth is not supported on this device"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 212
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 213
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, "ChinaNalSecurityType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_security_on_check"

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 215
    .local v16, "isChecked":I
    const-string v1, "CheckBluetoothStateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(): enable PopUp for Bluetooth  ChinaNalSecurityType : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isChecked : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "ChinaNalSecurity"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isShareListenChecked()Z

    move-result v1

    if-nez v1, :cond_9

    .line 218
    new-instance v13, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v13, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 219
    .local v13, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_8

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto/16 :goto_0

    .line 226
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto/16 :goto_0

    .line 235
    .end local v9    # "ChinaNalSecurityType":Ljava/lang/String;
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "isChecked":I
    :cond_9
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v14, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_a

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    goto/16 :goto_0

    .line 242
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 305
    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "onDestroy :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sput-boolean v3, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    .line 307
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "CheckBluetoothStateActivity"

    const-string v1, "onResume :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 300
    return-void
.end method
