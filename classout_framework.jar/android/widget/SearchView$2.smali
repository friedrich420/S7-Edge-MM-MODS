.class Landroid/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, this$0:Landroid/widget/SearchView;

    # invokes: Landroid/widget/SearchView;->updateFocusedState()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$000(Landroid/widget/SearchView;)V

    .line 182
    return-void
.end method
