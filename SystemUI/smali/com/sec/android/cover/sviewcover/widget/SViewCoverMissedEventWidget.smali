.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverMissedEventWidget.java"


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private VZW_MSG_APP:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMissedCallCount:I

.field private mMissedMsgCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->DBG:Z

    .line 19
    const-string v0, "SViewCoverMissedEventWidget"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    .line 28
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 29
    const-string v0, "com.verizon.messaging.vzmsgs"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->VZW_MSG_APP:Ljava/lang/String;

    .line 30
    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->MISSED_EVENT_UPDATE:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    .line 38
    const/16 v0, 0x7b

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->REQ_INDEX_MSG:I

    .line 40
    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    .line 41
    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    .line 50
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->TAG:Ljava/lang/String;

    const-string v1, "MissedEvent ()"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
