.class Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$1;
.super Ljava/lang/Object;
.source "SDualScreenActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;)V
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
    .line 388
    iput-object p1, p0, this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenChanged(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 4
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 391
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    .line 393
    .local v0, "sdkScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    iget-object v1, p0, this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->access$100(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 394
    iget-object v1, p0, this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->access$100(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;->onScreenChanged(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 396
    :cond_15
    return-void
.end method
