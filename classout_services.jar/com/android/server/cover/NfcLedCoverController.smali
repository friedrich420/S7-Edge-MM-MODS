.class final Lcom/android/server/cover/NfcLedCoverController;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/NfcLedCoverController$1;,
        Lcom/android/server/cover/NfcLedCoverController$Command;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final CMD_INTERNAL_LED_ACCEPT_REJECT:I = 0x11

.field private static final CMD_INTERNAL_LED_CALL_INPROGRESS:I = 0x3

.field private static final CMD_INTERNAL_LED_REPLY:I = 0xd1

.field private static final CMD_LED_ALARM:I = 0x6

.field private static final CMD_LED_BATTERY_CHARGING:I = 0xc

.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS:I = 0x13

.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_BATTERY_LOW:I = 0xb

.field private static final CMD_LED_CALL_END:I = 0x4

.field private static final CMD_LED_CALL_INCOMING:I = 0x2

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK:I = 0xf

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final CMD_LED_FACTORY_MODE:I = 0xe0

.field private static final CMD_LED_INDICATOR:I = 0x10

.field private static final CMD_LED_MISSED_EVENT:I = 0x9

.field private static final CMD_LED_MUSIC:I = 0xd

.field private static final CMD_LED_NEW_MESSAGE:I = 0x5

.field private static final CMD_LED_OFF:I = 0x12

.field private static final CMD_LED_POWER_ON:I = 0x1

.field private static final CMD_LED_VIDEO_CALL_INCOMING:I = 0x14

.field private static final CMD_LED_VOICE_RECORDER:I = 0xe

.field private static final CMD_LED_VOLUME:I = 0xa

.field private static final DEBUG:Z = true

.field private static final EVENT_RESULT_ACCEPT:B = 0x1t

.field private static final EVENT_RESULT_REJECT:B = 0x2t

.field private static final EVENT_TOUCH_POLL_INTERVAL:J = 0x64L

.field private static final EVENT_TYPE_ALARM:I = 0x1

.field private static final EVENT_TYPE_CALL:I = 0x0

.field private static final EVENT_TYPE_MAX:I = 0x3

.field private static final EVENT_TYPE_SCHEDULE:I = 0x3

.field private static final EVENT_TYPE_TIMER:I = 0x2

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.NfcLedCoverController"

.field private static TEST:I

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mCallTimerLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedCoverAttached:Z

.field private mIsLedOn:Z

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPrevCommand:I

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, mResponsePattern:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v2, p0, mIsLedCoverAttached:Z

    .line 70
    iput-boolean v2, p0, mIsLedOn:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mCallTimerLock:Ljava/lang/Object;

    .line 153
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mCallStartTime:J

    .line 164
    iput v2, p0, mLedCoverStartRetryCount:I

    .line 165
    iput v2, p0, mLedCoverTransceiveRetryCount:I

    .line 173
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/ArrayList;

    .line 177
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 178
    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 179
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 180
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    iget-object v0, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 183
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    iget-object v0, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 186
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    iget-object v0, p0, mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 189
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "onoff ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    iget-object v0, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 194
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, TEST:I

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/NfcLedCoverController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    iget v0, p0, mPrevCommand:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/cover/NfcLedCoverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    invoke-direct {p0}, sendCurrentClockCommand()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/cover/NfcLedCoverController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    iget-object v0, p0, mCallTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/cover/NfcLedCoverController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    iget-boolean v0, p0, mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/cover/NfcLedCoverController;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    invoke-direct {p0}, getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/cover/NfcLedCoverController;[B)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # [B

    .prologue
    .line 55
    invoke-direct {p0, p1}, getByteDataString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/NfcLedCoverController;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    iget-object v0, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/cover/NfcLedCoverController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, mLedCoverStartRetryCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    iget-object v0, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 55
    iget-object v0, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cover/NfcLedCoverController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cover/NfcLedCoverController;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, handleEventResponse(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/NfcLedCoverController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, handleClearOngoingEvent(I)V

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .registers 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 912
    if-nez p2, :cond_8

    .line 913
    new-array p2, v5, [B

    .end local p2    # "data":[B
    aput-byte v6, p2, v6

    .line 915
    .restart local p2    # "data":[B
    :cond_8
    const/4 v2, 0x5

    .line 916
    .local v2, "nfcCommandLength":I
    invoke-direct {p0, p2}, getLenByteValue([B)I

    move-result v1

    .line 917
    .local v1, "ledPacketLength":I
    add-int v3, v2, v1

    .line 918
    .local v3, "size":I
    add-int v4, v2, v1

    new-array v0, v4, [B

    .line 921
    .local v0, "genData":[B
    aput-byte v6, v0, v6

    .line 922
    const/16 v4, -0x5e

    aput-byte v4, v0, v5

    .line 923
    const/4 v4, 0x2

    aput-byte v6, v0, v4

    .line 924
    const/4 v4, 0x3

    aput-byte v6, v0, v4

    .line 926
    const/4 v4, 0x4

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 929
    const/4 v4, 0x5

    const/16 v5, 0x10

    aput-byte v5, v0, v4

    .line 930
    const/4 v4, 0x6

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 931
    const/4 v4, 0x7

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    .line 932
    const/16 v4, 0x8

    array-length v5, p2

    invoke-static {p2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 933
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v3, -0x2

    const/4 v6, -0x1

    aput-byte v6, v0, v5

    aput-byte v6, v0, v4

    .line 936
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte data to send to cover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-object v0
.end method

.method private clearOngoingEvent()V
    .registers 2

    .prologue
    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 806
    return-void
.end method

.method private getByteDataString([B)Ljava/lang/String;
    .registers 8
    .param p1, "data"    # [B

    .prologue
    .line 1253
    if-nez p1, :cond_6

    .line 1254
    const-string/jumbo v2, "null"

    .line 1260
    :goto_5
    return-object v2

    .line 1256
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, p1

    if-ge v0, v2, :cond_2d

    .line 1258
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1260
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method private getCallDuration()[B
    .registers 15

    .prologue
    .line 1232
    const/4 v6, 0x4

    new-array v0, v6, [B

    fill-array-data v0, :array_68

    .line 1233
    .local v0, "duration":[B
    iget-wide v6, p0, mCallStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_f

    .line 1246
    :goto_e
    return-object v0

    .line 1236
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, mCallStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 1238
    .local v4, "time":J
    const/4 v1, 0x0

    .line 1239
    .local v1, "locale":Ljava/util/Locale;
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x64

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1240
    .local v2, "minutes":[B
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    rem-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1241
    .local v3, "seconds":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    .line 1242
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    .line 1243
    const/4 v6, 0x2

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    .line 1244
    const/4 v6, 0x3

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    goto :goto_e

    .line 1232
    nop

    :array_68
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getLenByteValue([B)I
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 945
    const/4 v0, 0x5

    .line 946
    .local v0, "len":I
    if-eqz p1, :cond_6

    .line 947
    array-length v1, p1

    add-int/2addr v0, v1

    .line 953
    :goto_5
    return v0

    .line 950
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private getListenerTypeForCommand(I[B)I
    .registers 5
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1278
    sparse-switch p1, :sswitch_data_22

    .line 1302
    :cond_4
    :goto_4
    const/4 v0, -0x1

    :goto_5
    :pswitch_5
    :sswitch_5
    return v0

    .line 1282
    :sswitch_6
    if-eqz p2, :cond_4

    array-length v1, p2

    if-lez v1, :cond_4

    .line 1283
    aget-byte v1, p2, v0

    packed-switch v1, :pswitch_data_30

    :pswitch_10
    goto :goto_4

    .line 1291
    :sswitch_11
    if-eqz p2, :cond_4

    array-length v1, p2

    if-lez v1, :cond_4

    .line 1292
    aget-byte v0, p2, v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_4

    .line 1294
    :pswitch_1c
    const/4 v0, 0x1

    goto :goto_5

    .line 1296
    :pswitch_1e
    const/4 v0, 0x2

    goto :goto_5

    .line 1298
    :pswitch_20
    const/4 v0, 0x3

    goto :goto_5

    .line 1278
    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_5
        0x6 -> :sswitch_11
        0xe0 -> :sswitch_6
    .end sparse-switch

    .line 1283
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_5
        :pswitch_10
        :pswitch_5
    .end packed-switch

    .line 1292
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
    .end packed-switch
.end method

.method private handleClearOngoingEvent(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 1108
    const v0, 0xfffe

    if-ne p1, v0, :cond_6

    .line 1109
    const/4 p1, 0x3

    .line 1111
    :cond_6
    if-eqz p1, :cond_12

    iget-object v0, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_15

    iget-object v0, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_15

    .line 1112
    :cond_12
    invoke-direct {p0}, clearOngoingEvent()V

    .line 1114
    :cond_15
    return-void
.end method

.method private handleEventResponse(II)V
    .registers 9
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 1117
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleEventResponse: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5b

    .line 1120
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: accept"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1122
    :try_start_2f
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1123
    .local v2, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_35

    .line 1124
    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_35

    .line 1127
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 1141
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_4d
    :try_start_4d
    iget-object v3, p0, mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1142
    iget-object v3, p0, mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5a
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_5a} :catch_a0

    .line 1147
    :cond_5a
    :goto_5a
    return-void

    .line 1128
    :cond_5b
    const/4 v3, 0x2

    if-ne p2, v3, :cond_87

    .line 1129
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: reject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1131
    :try_start_68
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1132
    .restart local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_6e

    .line 1133
    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_6e

    .line 1136
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_82
    move-exception v3

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_68 .. :try_end_84} :catchall_82

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_85
    :try_start_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_82

    goto :goto_4d

    .line 1138
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_87
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1144
    :catch_a0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_5a
.end method

.method private handleInvalidCommand(I[B[B)V
    .registers 13
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 837
    iput p1, p0, mPrevCommand:I

    .line 841
    if-nez p3, :cond_64

    .line 842
    iput-boolean v7, p0, mIsLedOn:Z

    .line 867
    :cond_8
    :goto_8
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v0, "doneIntent":Landroid/content/Intent;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Sent done intent, fail transceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    sparse-switch p1, :sswitch_data_f8

    .line 885
    :cond_1e
    :goto_1e
    iget-object v4, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v3

    .line 887
    .local v3, "stopCoverResult":Z
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iput-boolean v7, p0, mIsLedOn:Z

    .line 891
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Invalid command finished, Start wireless charger"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v4, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v8}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 895
    iput-boolean v7, p0, mPollingTouchEvents:Z

    .line 896
    iget-object v4, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 898
    :try_start_56
    iget-object v4, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 899
    iget-object v4, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_63} :catch_f1

    .line 906
    .end local v0    # "doneIntent":Landroid/content/Intent;
    :cond_63
    :goto_63
    return-void

    .line 843
    .end local v3    # "stopCoverResult":Z
    :cond_64
    array-length v4, p3

    if-ne v4, v8, :cond_8

    aget-byte v4, p3, v7

    const/16 v5, -0x4e

    if-ne v4, v5, :cond_8

    const/16 v4, 0x12

    if-eq p1, v4, :cond_8

    .line 847
    iget v4, p0, mLedCoverTransceiveRetryCount:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_d7

    .line 848
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repete command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mLedCoverTransceiveRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iput-boolean v7, p0, mIsLedOn:Z

    .line 851
    iget-object v4, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v3

    .line 853
    .restart local v3    # "stopCoverResult":Z
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 856
    .local v2, "msg":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 857
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 858
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 859
    iget-object v4, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 860
    iget v4, p0, mLedCoverTransceiveRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mLedCoverTransceiveRetryCount:I

    goto :goto_63

    .line 863
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "stopCoverResult":Z
    :cond_d7
    iput v7, p0, mLedCoverTransceiveRetryCount:I

    .line 864
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Could not transceive command to cover so turn off led cover"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 874
    .restart local v0    # "doneIntent":Landroid/content/Intent;
    :sswitch_e2
    iget-boolean v4, p0, mCallInProgressDisplay:Z

    if-eqz v4, :cond_e9

    .line 875
    invoke-direct {p0}, stopCallInProgressDisplayTimer()V

    .line 880
    :cond_e9
    :sswitch_e9
    iget-boolean v4, p0, mCallInProgressDisplay:Z

    if-eqz v4, :cond_1e

    .line 881
    iput-boolean v7, p0, mCallInProgressDisplay:Z

    goto/16 :goto_1e

    .line 901
    .restart local v3    # "stopCoverResult":Z
    :catch_f1
    move-exception v1

    .line 902
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_63

    .line 871
    nop

    :sswitch_data_f8
    .sparse-switch
        0x2 -> :sswitch_e9
        0x4 -> :sswitch_e2
        0x12 -> :sswitch_e9
    .end sparse-switch
.end method

.method private handlePollEventTouch(I)V
    .registers 14
    .param p1, "event"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 961
    iget-boolean v4, p0, mPollingTouchEvents:Z

    if-nez v4, :cond_23

    .line 963
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :try_start_10
    iget-object v4, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 967
    iget-object v4, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 1042
    :cond_1d
    :goto_1d
    return-void

    .line 969
    :catch_1e
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1d

    .line 975
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_23
    sget v4, TEST:I

    if-lez v4, :cond_2d

    .line 976
    iget v4, p0, testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, testCount:I

    .line 980
    :cond_2d
    const/16 v4, 0x11

    new-array v5, v8, [B

    aput-byte v7, v5, v7

    invoke-direct {p0, v4, v5}, buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 981
    .local v2, "pollData":[B
    const/4 v3, 0x0

    .line 983
    .local v3, "returnData":[B
    :try_start_38
    sget v4, TEST:I

    if-nez v4, :cond_42

    .line 984
    iget-object v4, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_ba

    move-result-object v3

    .line 991
    :cond_42
    :goto_42
    sget v4, TEST:I

    if-lez v4, :cond_61

    iget v4, p0, testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_61

    .line 992
    const/4 v4, 0x5

    new-array v3, v4, [B

    .line 993
    aput-byte v7, v3, v8

    aput-byte v7, v3, v7

    .line 994
    const/16 v4, -0x2f

    aput-byte v4, v3, v9

    .line 995
    const/16 v4, 0x11

    aput-byte v4, v3, v11

    .line 996
    sget v4, TEST:I

    if-ne v4, v9, :cond_c3

    .line 997
    aput-byte v8, v3, v10

    .line 1007
    :cond_61
    :goto_61
    invoke-direct {p0, v3}, isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 1009
    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v3, v10

    if-ne v4, v8, :cond_ee

    const-string v4, "accept"

    :goto_7a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :try_start_85
    iget-object v4, p0, mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_92

    .line 1014
    iget-object v4, p0, mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_92
    .catch Ljava/lang/IllegalStateException; {:try_start_85 .. :try_end_92} :catch_f2

    .line 1019
    :cond_92
    :goto_92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1020
    .local v1, "msg":Landroid/os/Message;
    iput v11, v1, Landroid/os/Message;->what:I

    .line 1022
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1024
    aget-byte v4, v3, v10

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1025
    iget-object v4, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1026
    iput-boolean v7, p0, mPollingTouchEvents:Z

    .line 1028
    :try_start_a5
    iget-object v4, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1029
    iget-object v4, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_a5 .. :try_end_b2} :catch_b4

    goto/16 :goto_1d

    .line 1031
    :catch_b4
    move-exception v0

    .line 1032
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1d

    .line 986
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_ba
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 998
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c3
    sget v4, TEST:I

    if-ne v4, v8, :cond_ca

    .line 999
    aput-byte v9, v3, v10

    goto :goto_61

    .line 1001
    :cond_ca
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    aput-byte v9, v3, v10

    goto/16 :goto_61

    .line 1009
    :cond_ee
    const-string/jumbo v4, "reject"

    goto :goto_7a

    .line 1016
    :catch_f2
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_92

    .line 1036
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_f7
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1038
    .restart local v1    # "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 1039
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1040
    iget-object v4, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1d
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .registers 15
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 622
    iget-object v9, p0, mCallTimerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 624
    :try_start_3
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const v8, 0xfffe

    if-ne p1, v8, :cond_65

    .line 630
    iget-boolean v8, p0, mCallInProgressDisplay:Z

    if-eqz v8, :cond_2f

    .line 631
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Call already in progress but we should update data with new values"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, stopCallInProgressDisplayTimer()V

    .line 634
    :cond_2f
    invoke-direct {p0, p2}, startCallInProgressDisplayTimer([B)V

    .line 635
    const/4 p1, 0x3

    .line 709
    :goto_33
    iput p1, p0, mPrevCommand:I

    .line 712
    const/4 v8, 0x3

    if-eq p1, v8, :cond_47

    const/16 v8, 0xd

    if-eq p1, v8, :cond_47

    const/16 v8, 0xe

    if-eq p1, v8, :cond_47

    const/4 v8, 0x2

    if-eq p1, v8, :cond_47

    const/16 v8, 0x14

    if-ne p1, v8, :cond_4a

    .line 716
    :cond_47
    invoke-direct {p0, p1, p2}, setOngoingEvent(I[B)V

    .line 721
    :cond_4a
    sparse-switch p1, :sswitch_data_240

    .line 781
    :goto_4d
    const/4 v8, 0x0

    iput-boolean v8, p0, mPollingTouchEvents:Z

    .line 782
    iget-object v8, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_83

    .line 784
    :try_start_56
    iget-object v8, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 785
    iget-object v8, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_63} :catch_23a
    .catchall {:try_start_56 .. :try_end_63} :catchall_83

    .line 792
    :cond_63
    :goto_63
    :try_start_63
    monitor-exit v9

    .line 793
    :goto_64
    return-void

    .line 636
    :cond_65
    const/16 v8, 0x12

    if-ne p1, v8, :cond_86

    iget-boolean v8, p0, mIsLedOn:Z

    if-nez v8, :cond_86

    .line 638
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v8, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 641
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Led cover already off"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    monitor-exit v9

    goto :goto_64

    .line 792
    :catchall_83
    move-exception v8

    monitor-exit v9
    :try_end_85
    .catchall {:try_start_63 .. :try_end_85} :catchall_83

    throw v8

    .line 644
    :cond_86
    :try_start_86
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Ensuring NFC LED Cover started"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, "coverStarted":Z
    invoke-direct {p0}, tryStartLedCover()Z

    move-result v0

    .line 650
    if-nez v0, :cond_103

    .line 651
    iget v8, p0, mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v8, v10, :cond_d3

    .line 652
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mLedCoverStartRetryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 655
    .local v5, "msg":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v5, Landroid/os/Message;->what:I

    .line 656
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 657
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    iget-object v8, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    iget v8, p0, mLedCoverStartRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, mLedCoverStartRetryCount:I

    .line 661
    iget-object v8, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    .line 676
    .end local v5    # "msg":Landroid/os/Message;
    :goto_d1
    monitor-exit v9

    goto :goto_64

    .line 664
    :cond_d3
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Could not start NFC LED Cover"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v8, 0x0

    iput v8, p0, mLedCoverStartRetryCount:I

    .line 666
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, "doneIntent":Landroid/content/Intent;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 668
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, fail start"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v8, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    .line 672
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v8, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    goto :goto_d1

    .line 678
    .end local v1    # "doneIntent":Landroid/content/Intent;
    :cond_103
    const/4 v8, 0x0

    iput v8, p0, mLedCoverStartRetryCount:I

    .line 681
    invoke-direct {p0, p1, p2}, buildNfcCoverLedData(I[B)[B
    :try_end_109
    .catchall {:try_start_86 .. :try_end_109} :catchall_83

    move-result-object v3

    .line 682
    .local v3, "genData":[B
    const/4 v6, 0x0

    .line 684
    .local v6, "returnValue":[B
    :try_start_10b
    iget-object v8, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8, v3}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v6

    .line 685
    if-eqz v6, :cond_12f

    .line 686
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_12f} :catch_169
    .catchall {:try_start_10b .. :try_end_12f} :catchall_83

    .line 692
    :cond_12f
    :goto_12f
    :try_start_12f
    invoke-direct {p0, p2}, getLenByteValue([B)I

    move-result v8

    invoke-direct {p0, p1, v8, v6}, isValidResponse(II[B)Z

    move-result v8

    if-nez v8, :cond_179

    .line 693
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing response for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-direct {p0, p1, p2, v6}, handleInvalidCommand(I[B[B)V

    .line 696
    sget v8, TEST:I

    if-nez v8, :cond_172

    .line 697
    monitor-exit v9

    goto/16 :goto_64

    .line 688
    :catch_169
    move-exception v2

    .line 689
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Error in trancieve command"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12f

    .line 699
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_172
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_179
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .restart local v1    # "doneIntent":Landroid/content/Intent;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, sucess"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v8, 0x0

    iput v8, p0, mLedCoverTransceiveRetryCount:I

    .line 706
    invoke-direct {p0, p1, p2}, scheduleLedOffTimerout(I[B)V

    goto/16 :goto_33

    .line 724
    .end local v0    # "coverStarted":Z
    .end local v1    # "doneIntent":Landroid/content/Intent;
    .end local v3    # "genData":[B
    .end local v6    # "returnValue":[B
    :sswitch_194
    const/4 v8, 0x0

    iput-boolean v8, p0, mCallInProgressDisplay:Z

    .line 728
    :sswitch_197
    sget v8, TEST:I

    if-lez v8, :cond_19e

    .line 729
    const/4 v8, 0x0

    iput v8, p0, testCount:I

    .line 733
    :cond_19e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 734
    .restart local v5    # "msg":Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v5, Landroid/os/Message;->what:I

    .line 735
    invoke-direct {p0, p1, p2}, getListenerTypeForCommand(I[B)I

    move-result v4

    .line 736
    .local v4, "listenerType":I
    if-gez v4, :cond_1cc

    .line 737
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong listener type requested for command:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    monitor-exit v9
    :try_end_1ca
    .catchall {:try_start_12f .. :try_end_1ca} :catchall_83

    goto/16 :goto_64

    .line 741
    :cond_1cc
    :try_start_1cc
    iget-object v8, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_1d9

    .line 742
    iget-object v8, p0, mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1d9
    .catch Ljava/lang/IllegalStateException; {:try_start_1cc .. :try_end_1d9} :catch_1f5
    .catchall {:try_start_1cc .. :try_end_1d9} :catchall_83

    .line 747
    :cond_1d9
    :goto_1d9
    :try_start_1d9
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 750
    iget-boolean v8, p0, mPollingTouchEvents:Z

    if-eqz v8, :cond_1fa

    .line 751
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Already polling for touch events"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v8, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 756
    :goto_1ec
    iget-object v8, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_63

    .line 744
    :catch_1f5
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1d9

    .line 754
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_1fa
    const/4 v8, 0x1

    iput-boolean v8, p0, mPollingTouchEvents:Z

    goto :goto_1ec

    .line 761
    .end local v4    # "listenerType":I
    .end local v5    # "msg":Landroid/os/Message;
    :sswitch_1fe
    invoke-direct {p0}, stopCallInProgressDisplayTimer()V

    goto/16 :goto_63

    .line 764
    :sswitch_203
    iget-object v8, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v7

    .line 766
    .local v7, "stopCoverResult":Z
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v8, 0x0

    iput-boolean v8, p0, mIsLedOn:Z

    .line 771
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "LED_OFF Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v8, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 778
    .end local v7    # "stopCoverResult":Z
    :sswitch_235
    const/4 v8, 0x0

    iput-boolean v8, p0, mCallInProgressDisplay:Z

    goto/16 :goto_4d

    .line 787
    :catch_23a
    move-exception v2

    .line 788
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_23e
    .catchall {:try_start_1d9 .. :try_end_23e} :catchall_83

    goto/16 :goto_63

    .line 721
    :sswitch_data_240
    .sparse-switch
        0x2 -> :sswitch_194
        0x4 -> :sswitch_1fe
        0x6 -> :sswitch_197
        0xa -> :sswitch_235
        0x12 -> :sswitch_203
        0xe0 -> :sswitch_197
    .end sparse-switch
.end method

.method private isFinishedTouchReply([B)Z
    .registers 7
    .param p1, "returnData"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 1096
    if-eqz p1, :cond_1f

    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1f

    aget-byte v1, p1, v3

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1f

    aget-byte v1, p1, v4

    if-eq v1, v0, :cond_1e

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_1f

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private isSingleMissedEvent([B)Z
    .registers 7
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v4, 0x30

    .line 427
    if-eqz p1, :cond_a

    array-length v2, p1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_b

    .line 430
    :cond_a
    :goto_a
    return v0

    :cond_b
    aget-byte v2, p1, v1

    if-ne v2, v4, :cond_14

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-eq v2, v4, :cond_1e

    :cond_14
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_a

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_a

    :cond_1e
    move v0, v1

    goto :goto_a
.end method

.method private isValidCoverStartData([B)Z
    .registers 4
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    .line 818
    if-eqz p1, :cond_7

    array-length v1, p1

    if-le v1, v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isValidResponse(II[B)Z
    .registers 14
    .param p1, "command"    # I
    .param p2, "len"    # I
    .param p3, "response"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1056
    if-nez p3, :cond_5

    .line 1084
    :cond_4
    :goto_4
    return v5

    .line 1059
    :cond_5
    array-length v7, p3

    sget-object v8, mResponsePattern:[B

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 1063
    sget-object v7, mResponsePattern:[B

    const/4 v8, 0x3

    int-to-byte v9, p1

    aput-byte v9, v7, v8

    .line 1064
    sget-object v7, mResponsePattern:[B

    int-to-byte v8, p2

    aput-byte v8, v7, v6

    .line 1066
    const-string v7, "CoverManager.NfcLedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected response data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, mResponsePattern:[B

    invoke-direct {p0, v9}, getByteDataString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v4, 0x0

    .line 1069
    .local v4, "patternCount":I
    move-object v0, p3

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_38
    if-ge v2, v3, :cond_4

    aget-byte v1, v0, v2

    .line 1070
    .local v1, "b":B
    sget-object v7, mResponsePattern:[B

    aget-byte v7, v7, v4

    if-ne v1, v7, :cond_4b

    .line 1071
    add-int/lit8 v4, v4, 0x1

    .line 1072
    sget-object v7, mResponsePattern:[B

    array-length v7, v7

    if-ne v4, v7, :cond_4d

    move v5, v6

    .line 1073
    goto :goto_4

    .line 1075
    :cond_4b
    if-nez v4, :cond_4

    .line 1069
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_38
.end method

.method private scheduleLedOffTimerout(I[B)V
    .registers 13
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const-wide/16 v8, 0xe74

    const/16 v6, 0xf

    const/4 v5, 0x1

    .line 344
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleLedOffTimerout, command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sparse-switch p1, :sswitch_data_c8

    .line 368
    iget-boolean v2, p0, mIsLedOn:Z

    if-eqz v2, :cond_68

    if-eq p1, v6, :cond_2a

    const/4 v2, 0x3

    if-ne p1, v2, :cond_68

    :cond_2a
    iget v2, p0, mPrevCommand:I

    if-ne v2, p1, :cond_68

    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 370
    if-ne p1, v6, :cond_60

    .line 371
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3f
    :goto_3f
    return-void

    .line 352
    :sswitch_40
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 353
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 356
    :cond_4d
    :try_start_4d
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 357
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5a
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_5a} :catch_5b

    goto :goto_3f

    .line 359
    :catch_5b
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3f

    .line 373
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_60
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Call InProgress duration time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 380
    :cond_68
    :try_start_68
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_75

    .line 381
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_75
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_75} :catch_95

    .line 386
    :cond_75
    :goto_75
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 387
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 390
    :cond_82
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 391
    .local v1, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 392
    iput v5, v1, Landroid/os/Message;->what:I

    .line 393
    packed-switch p1, :pswitch_data_de

    .line 414
    :pswitch_8f
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3f

    .line 383
    .end local v1    # "msgLedOff":Landroid/os/Message;
    :catch_95
    move-exception v0

    .line 384
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_75

    .line 395
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msgLedOff":Landroid/os/Message;
    :pswitch_9a
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x11f8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3f

    .line 400
    :pswitch_a2
    invoke-direct {p0, p2}, isSingleMissedEvent([B)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 401
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3f

    .line 403
    :cond_ae
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x13ec

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3f

    .line 408
    :pswitch_b6
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x2328

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3f

    .line 411
    :pswitch_be
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3f

    .line 345
    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_40
        0x12 -> :sswitch_40
        0x14 -> :sswitch_40
        0xe0 -> :sswitch_40
    .end sparse-switch

    .line 393
    :pswitch_data_de
    .packed-switch 0x6
        :pswitch_be
        :pswitch_8f
        :pswitch_8f
        :pswitch_a2
        :pswitch_8f
        :pswitch_8f
        :pswitch_9a
        :pswitch_b6
        :pswitch_b6
    .end packed-switch
.end method

.method private sendCurrentClockCommand()V
    .registers 15

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 546
    const/4 v4, 0x0

    .line 547
    .local v4, "curTimeStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 549
    .local v6, "locale":Ljava/util/Locale;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .line 550
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 551
    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 552
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 554
    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 555
    .local v5, "hours":I
    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 557
    .local v7, "minutes":I
    if-eqz v0, :cond_5f

    .line 560
    const-string v9, "%02d%02d"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 573
    :goto_3c
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendPowerKeyToCover : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 577
    .local v8, "timeData":[B
    const/16 v9, 0xf

    invoke-virtual {p0, v9, v8}, sendDataToNfcLedCover(I[B)V

    .line 578
    return-void

    .line 563
    .end local v8    # "timeData":[B
    :cond_5f
    rem-int/lit8 v5, v5, 0xc

    .line 564
    if-nez v5, :cond_65

    .line 565
    const/16 v5, 0xc

    .line 569
    :cond_65
    const-string v9, "%2d%02d"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3c
.end method

.method private setOngoingEvent(I[B)V
    .registers 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 796
    iget-object v0, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_c

    .line 797
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 802
    :goto_b
    return-void

    .line 799
    :cond_c
    iget-object v0, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput p1, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    .line 800
    iget-object v0, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    goto :goto_b
.end method

.method private startCallInProgressDisplayTimer([B)V
    .registers 11
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1158
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1160
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :try_start_8
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1161
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1162
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, mCallStartTime:J
    :try_end_14
    .catch Ljava/nio/BufferUnderflowException; {:try_start_8 .. :try_end_14} :catch_57
    .catch Ljava/nio/BufferOverflowException; {:try_start_8 .. :try_end_14} :catch_60

    .line 1170
    const-string v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mCallStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3b

    .line 1172
    iget-object v0, p0, mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1173
    iput-object v8, p0, mCallDurationTimer:Ljava/util/Timer;

    .line 1174
    iput-object v8, p0, mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1176
    :cond_3b
    iput-boolean v4, p0, mCallInProgressDisplay:Z

    .line 1177
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, mCallDurationTimer:Ljava/util/Timer;

    .line 1178
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v0, p0, v8}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$1;)V

    iput-object v0, p0, mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1180
    :try_start_4b
    iget-object v0, p0, mCallDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_56
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4b .. :try_end_56} :catch_69

    .line 1187
    :goto_56
    return-void

    .line 1163
    :catch_57
    move-exception v7

    .line 1164
    .local v7, "e":Ljava/nio/BufferUnderflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 1166
    .end local v7    # "e":Ljava/nio/BufferUnderflowException;
    :catch_60
    move-exception v7

    .line 1167
    .local v7, "e":Ljava/nio/BufferOverflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 1181
    .end local v7    # "e":Ljava/nio/BufferOverflowException;
    :catch_69
    move-exception v7

    .line 1182
    .local v7, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Error while scheduling TimerTask"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    const/4 v0, 0x0

    iput-boolean v0, p0, mCallInProgressDisplay:Z

    .line 1184
    iput-object v8, p0, mCallDurationTimer:Ljava/util/Timer;

    .line 1185
    iput-object v8, p0, mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_56
.end method

.method private stopCallInProgressDisplayTimer()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, mCallInProgressDisplay:Z

    .line 1197
    iget-object v0, p0, mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 1198
    iget-object v0, p0, mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1199
    iput-object v1, p0, mCallDurationTimer:Ljava/util/Timer;

    .line 1200
    iput-object v1, p0, mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1204
    :goto_11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mCallStartTime:J

    .line 1205
    return-void

    .line 1202
    :cond_16
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Call duration should not be null in stop"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method private tryStartLedCover()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 587
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mIsLedOn:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-boolean v3, p0, mIsLedOn:Z

    if-nez v3, :cond_71

    .line 592
    iget v3, p0, mLedCoverStartRetryCount:I

    if-nez v3, :cond_34

    .line 594
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Disable Wireless Charger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v3, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v1}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 598
    :cond_34
    iget-object v3, p0, mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StartLedCover()[B

    move-result-object v0

    .line 600
    .local v0, "coverStartData":[B
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-direct {p0, v0}, isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 603
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iput v1, p0, mLedCoverStartRetryCount:I

    .line 605
    iput-boolean v2, p0, mIsLedOn:Z

    .end local v0    # "coverStartData":[B
    :goto_67
    move v1, v2

    .line 614
    :goto_68
    return v1

    .line 607
    .restart local v0    # "coverStartData":[B
    :cond_69
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 611
    .end local v0    # "coverStartData":[B
    :cond_71
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v3, "NFC LED Cover already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1364
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1366
    iget-boolean v2, p0, mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1367
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1372
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1374
    .local v1, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_44

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    .line 1380
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_95
    move-exception v2

    monitor-exit v3
    :try_end_97
    .catchall {:try_start_1c .. :try_end_97} :catchall_95

    throw v2

    .line 1379
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_98
    :try_start_98
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_95

    .line 1381
    return-void
.end method

.method public handleSendPowerKeyToCover()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    new-array v0, v3, [B

    .line 497
    .local v0, "data":[B
    aput-byte v2, v0, v2

    .line 499
    iget-boolean v2, p0, mIsLedOn:Z

    if-eqz v2, :cond_43

    .line 502
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsLedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". should be off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_2b
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 506
    iget-object v2, p0, mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_38} :catch_3e

    .line 511
    :cond_38
    :goto_38
    const/16 v2, 0x12

    invoke-virtual {p0, v2, v0}, sendDataToNfcLedCover(I[B)V

    .line 540
    :goto_3d
    return-void

    .line 508
    :catch_3e
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_38

    .line 515
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_43
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsLedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". should be on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOngoingEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v3, p0, mCallTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 521
    :try_start_86
    iget-object v2, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v2, :cond_bb

    .line 524
    iget-object v2, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_af

    .line 525
    iget-object v2, p0, mCallDurationTimer:Ljava/util/Timer;

    if-eqz v2, :cond_99

    iget-object v2, p0, mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    if-nez v2, :cond_ab

    .line 526
    :cond_99
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v4, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-direct {p0}, clearOngoingEvent()V

    .line 528
    invoke-direct {p0}, sendCurrentClockCommand()V

    .line 538
    :goto_a6
    monitor-exit v3

    goto :goto_3d

    :catchall_a8
    move-exception v2

    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_86 .. :try_end_aa} :catchall_a8

    throw v2

    .line 530
    :cond_ab
    const/4 v2, 0x1

    :try_start_ac
    iput-boolean v2, p0, mCallInProgressDisplay:Z

    goto :goto_a6

    .line 533
    :cond_af
    iget-object v2, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v4, p0, mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget-object v4, v4, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v2, v4}, sendDataToNfcLedCover(I[B)V

    goto :goto_a6

    .line 536
    :cond_bb
    invoke-direct {p0}, sendCurrentClockCommand()V
    :try_end_be
    .catchall {:try_start_ac .. :try_end_be} :catchall_a8

    goto :goto_a6
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-ltz p1, :cond_44

    const/4 v1, 0x3

    if-le p1, v1, :cond_5d

    .line 443
    :cond_44
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_5c
    return-void

    .line 448
    :cond_5d
    iget-object v8, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 449
    :try_start_60
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 450
    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_66

    .line 451
    iget-object v1, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 452
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit v8

    goto :goto_5c

    .line 463
    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_86
    move-exception v1

    monitor-exit v8
    :try_end_88
    .catchall {:try_start_60 .. :try_end_88} :catchall_86

    throw v1

    .line 458
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_89
    const/4 v0, 0x0

    .line 459
    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_8a
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 461
    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 462
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_8a .. :try_end_a5} :catchall_86

    goto :goto_5c
.end method

.method sendDataToNfcLedCover(I[B)V
    .registers 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 276
    iget-boolean v2, p0, mIsLedCoverAttached:Z

    if-nez v2, :cond_f

    .line 278
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_e
    :goto_e
    return-void

    .line 284
    :cond_f
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataToNfcLedCover: command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const v2, 0xffff

    if-ne p1, v2, :cond_43

    .line 289
    iget v2, p0, mPrevCommand:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_55

    iget-boolean v2, p0, mIsLedOn:Z

    if-eqz v2, :cond_55

    .line 290
    const/16 p1, 0xf

    .line 300
    :cond_43
    const/16 v2, 0xc

    if-ne p1, v2, :cond_5d

    iget v2, p0, mPrevCommand:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5d

    .line 301
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Ignore battery chargin, battery low already shown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 292
    :cond_55
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time tick: clock not displayed, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 306
    :cond_5d
    :try_start_5d
    iget-object v2, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 307
    iget-object v2, p0, mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_6a} :catch_8c

    .line 313
    :cond_6a
    :goto_6a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 314
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 315
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    const v2, 0xfff0

    if-ne p1, v2, :cond_91

    .line 318
    if-eqz p2, :cond_e

    array-length v2, p2

    if-lez v2, :cond_e

    .line 319
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 320
    aget-byte v2, p2, v6

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 321
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e

    .line 309
    .end local v1    # "msg":Landroid/os/Message;
    :catch_8c
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6a

    .line 324
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_91
    const/16 v2, 0x13

    if-ne p1, v2, :cond_a5

    .line 325
    iput v5, v1, Landroid/os/Message;->what:I

    .line 326
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 327
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_e

    .line 330
    :cond_a5
    iput v6, v1, Landroid/os/Message;->what:I

    .line 332
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 333
    iget-object v2, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e
.end method

.method public sendPowerKeyToCover()V
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 493
    return-void
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 468
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 473
    :try_start_39
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 474
    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_3f

    .line 475
    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 476
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 478
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 479
    const/4 v2, 0x1

    monitor-exit v3

    .line 485
    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :goto_7b
    return v2

    .line 483
    :cond_7c
    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_39 .. :try_end_7d} :catchall_85

    .line 484
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 483
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_85
    move-exception v2

    :try_start_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .registers 7
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x0

    .line 265
    if-eqz p1, :cond_21

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_21

    const/4 v0, 0x1

    .line 266
    .local v0, "isCoverAttached":Z
    :goto_b
    iget-boolean v2, p0, mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_11

    .line 267
    iput-boolean v0, p0, mIsLedCoverAttached:Z

    .line 271
    :cond_11
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nfc_led_cover_test"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, TEST:I

    .line 273
    return-void

    .end local v0    # "isCoverAttached":Z
    :cond_21
    move v0, v1

    .line 265
    goto :goto_b
.end method
