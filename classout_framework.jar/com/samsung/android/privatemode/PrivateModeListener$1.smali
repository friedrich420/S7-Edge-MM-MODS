.class Lcom/samsung/android/privatemode/PrivateModeListener$1;
.super Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
.source "PrivateModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/privatemode/PrivateModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/privatemode/PrivateModeListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/PrivateModeListener;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, this$0:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-direct {p0}, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "extInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, this$0:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/privatemode/PrivateModeListener;->onStateChanged(II)V

    .line 32
    return-void
.end method
