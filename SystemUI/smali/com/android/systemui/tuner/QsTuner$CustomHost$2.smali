.class Lcom/android/systemui/tuner/QsTuner$CustomHost$2;
.super Ljava/lang/Object;
.source "QsTuner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/QsTuner$CustomHost;->showBroadcastTileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/QsTuner$CustomHost;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;->this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    iput-object p2, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;->this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    # invokes: Lcom/android/systemui/tuner/QsTuner$CustomHost;->isValid(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->access$500(Lcom/android/systemui/tuner/QsTuner$CustomHost;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$CustomHost$2;->this$0:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->add(Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method
