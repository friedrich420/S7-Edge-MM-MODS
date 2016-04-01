.class Lcom/samsung/android/dualscreen/DualScreenManager$1;
.super Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks$Stub;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/DualScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/dualscreen/DualScreenManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/dualscreen/DualScreenManager;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, this$0:Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-direct {p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public screenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 4
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, this$0:Lcom/samsung/android/dualscreen/DualScreenManager;

    iget-object v0, v1, Lcom/samsung/android/dualscreen/DualScreenManager;->mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    .line 115
    .local v0, "li":Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;->mScreenFocusChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    if-eqz v1, :cond_f

    .line 116
    iget-object v1, v0, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;->mScreenFocusChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;->onScreenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 118
    :cond_f
    return-void
.end method
