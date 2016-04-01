.class Lcom/android/internal/widget/DirectionLockView$1;
.super Ljava/lang/Object;
.source "DirectionLockView.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DirectionLockView;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, this$0:Lcom/android/internal/widget/DirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 313
    return-void
.end method
