.class Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$2;
.super Ljava/lang/Object;
.source "SDualScreenActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V
    .registers 2

    .prologue
    .line 418
    iput-object p1, p0, this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandRequested(I)V
    .registers 3
    .param p1, "notifyReason"    # I

    .prologue
    .line 420
    iget-object v0, p0, this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->access$200(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 421
    iget-object v0, p0, this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->access$200(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;->onExpandRequested(I)V

    .line 423
    :cond_11
    return-void
.end method
