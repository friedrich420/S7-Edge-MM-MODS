.class Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
.super Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRListenerDelegate"
.end annotation


# instance fields
.field private final EVENT_FROM_SERVICE:I

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/motion/MRListener;

.field private mListenerPackageName:Ljava/lang/String;

.field private mMotionEvents:I

.field final synthetic this$0:Lcom/samsung/android/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/motion/MotionRecognitionManager;Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .registers 7
    .param p2, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p3, "motion_sensors"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 793
    iput-object p1, p0, this$0:Lcom/samsung/android/motion/MotionRecognitionManager;

    invoke-direct {p0}, Lcom/samsung/android/motion/IMotionRecognitionCallback$Stub;-><init>()V

    .line 785
    const/4 v1, 0x0

    iput-object v1, p0, mListenerPackageName:Ljava/lang/String;

    .line 786
    const/16 v1, 0x35

    iput v1, p0, EVENT_FROM_SERVICE:I

    .line 794
    iput-object p2, p0, mListener:Lcom/samsung/android/motion/MRListener;

    .line 795
    if-eqz p4, :cond_24

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 796
    .local v0, "looper":Landroid/os/Looper;
    :goto_14
    iput p3, p0, mMotionEvents:I

    .line 799
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mListenerPackageName:Ljava/lang/String;

    .line 802
    new-instance v1, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate$1;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/motion/MotionRecognitionManager;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 819
    return-void

    .line 795
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_24
    # getter for: Lcom/samsung/android/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/samsung/android/motion/MotionRecognitionManager;->access$200(Lcom/samsung/android/motion/MotionRecognitionManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_14
.end method

.method static synthetic access$300(Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/motion/MRListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .prologue
    .line 780
    iget-object v0, p0, mListener:Lcom/samsung/android/motion/MRListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/motion/MRListener;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, mListener:Lcom/samsung/android/motion/MRListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, mListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenerPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, mListenerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionEvents()I
    .registers 2

    .prologue
    .line 826
    iget v0, p0, mMotionEvents:I

    return v0
.end method

.method public motionCallback(Lcom/samsung/android/motion/MREvent;)V
    .registers 4
    .param p1, "motionEvent"    # Lcom/samsung/android/motion/MREvent;

    .prologue
    .line 834
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 835
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    .line 836
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 837
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    return-void
.end method

.method public setMotionEvents(I)V
    .registers 2
    .param p1, "motionevents"    # I

    .prologue
    .line 830
    iput p1, p0, mMotionEvents:I

    .line 831
    return-void
.end method
