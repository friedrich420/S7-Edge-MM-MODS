.class final Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public mCachedTimeMillis:J

.field public mEvent:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 954
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .prologue
    .line 950
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .param p1, "x1"    # Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .prologue
    .line 950
    iput-object p1, p0, mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object p1
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1008
    iget-object v0, p0, mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1009
    iput-object v1, p0, mEvent:Landroid/view/MotionEvent;

    .line 1010
    iget-object v0, p0, mRawEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1011
    iput-object v1, p0, mRawEvent:Landroid/view/MotionEvent;

    .line 1012
    const/4 v0, 0x0

    iput v0, p0, mPolicyFlags:I

    .line 1013
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mCachedTimeMillis:J

    .line 1014
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 986
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, mEvent:Landroid/view/MotionEvent;

    .line 987
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, mRawEvent:Landroid/view/MotionEvent;

    .line 988
    iput p3, p0, mPolicyFlags:I

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mCachedTimeMillis:J

    .line 990
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .registers 6
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 968
    sget-object v2, sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 970
    :try_start_3
    sget v1, sPoolSize:I

    if-lez v1, :cond_1e

    .line 971
    sget v1, sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, sPoolSize:I

    .line 972
    sget-object v0, sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 973
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v1, v0, mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    sput-object v1, sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 974
    const/4 v1, 0x0

    iput-object v1, v0, mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 975
    const/4 v1, 0x0

    iput-boolean v1, v0, mInPool:Z

    .line 979
    :goto_19
    invoke-direct {v0, p0, p1, p2}, initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 980
    monitor-exit v2

    return-object v0

    .line 977
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_1e
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    invoke-direct {v0}, <init>()V

    .restart local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    goto :goto_19

    .line 981
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .prologue
    .line 993
    sget-object v1, sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 994
    :try_start_3
    iget-boolean v0, p0, mInPool:Z

    if-eqz v0, :cond_12

    .line 995
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 997
    :cond_12
    :try_start_12
    invoke-direct {p0}, clear()V

    .line 998
    sget v0, sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2a

    .line 999
    sget v0, sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, sPoolSize:I

    .line 1000
    sget-object v0, sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    iput-object v0, p0, mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 1001
    sput-object p0, sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, mInPool:Z

    .line 1004
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 1005
    return-void
.end method
