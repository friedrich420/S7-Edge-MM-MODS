.class Landroid/widget/Editor$Blink;
.super Landroid/os/Handler;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    .prologue
    .line 2271
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2271
    invoke-direct {p0, p1}, <init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 2291
    iget-boolean v0, p0, mCancelled:Z

    if-nez v0, :cond_a

    .line 2292
    invoke-virtual {p0, p0}, removeCallbacks(Ljava/lang/Runnable;)V

    .line 2293
    const/4 v0, 0x1

    iput-boolean v0, p0, mCancelled:Z

    .line 2295
    :cond_a
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 2275
    iget-boolean v0, p0, mCancelled:Z

    if-eqz v0, :cond_5

    .line 2288
    :cond_4
    :goto_4
    return-void

    .line 2279
    :cond_5
    invoke-virtual {p0, p0}, removeCallbacks(Ljava/lang/Runnable;)V

    .line 2281
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->shouldBlink()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2282
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2283
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 2286
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method uncancel()V
    .registers 2

    .prologue
    .line 2298
    const/4 v0, 0x0

    iput-boolean v0, p0, mCancelled:Z

    .line 2299
    return-void
.end method
