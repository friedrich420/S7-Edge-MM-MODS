.class Landroid/speech/RecognitionService$StartListeningArgs;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartListeningArgs"
.end annotation


# instance fields
.field public final mCallingUid:I

.field public final mIntent:Landroid/content/Intent;

.field public final mListener:Landroid/speech/IRecognitionListener;

.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .registers 5
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "listener"    # Landroid/speech/IRecognitionListener;
    .param p4, "callingUid"    # I

    .prologue
    .line 162
    iput-object p1, p0, this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, mIntent:Landroid/content/Intent;

    .line 164
    iput-object p3, p0, mListener:Landroid/speech/IRecognitionListener;

    .line 165
    iput p4, p0, mCallingUid:I

    .line 166
    return-void
.end method
