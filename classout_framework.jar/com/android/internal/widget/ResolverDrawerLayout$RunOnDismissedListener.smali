.class Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunOnDismissedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .registers 2

    .prologue
    .line 950
    iput-object p1, p0, this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/widget/ResolverDrawerLayout;
    .param p2, "x1"    # Lcom/android/internal/widget/ResolverDrawerLayout$1;

    .prologue
    .line 950
    invoke-direct {p0, p1}, <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 953
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 954
    return-void
.end method
