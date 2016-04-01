.class Landroid/widget/TextView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;

.field final synthetic val$error:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 4685
    iput-object p1, p0, this$0:Landroid/widget/TextView;

    iput-object p2, p0, val$error:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4687
    iget-object v0, p0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v0

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_19

    .line 4688
    :cond_12
    iget-object v0, p0, this$0:Landroid/widget/TextView;

    iget-object v1, p0, val$error:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 4690
    :cond_19
    return-void
.end method
