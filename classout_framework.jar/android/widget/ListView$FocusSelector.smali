.class Landroid/widget/ListView$FocusSelector;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    .prologue
    .line 1130
    iput-object p1, p0, this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ListView;
    .param p2, "x1"    # Landroid/widget/ListView$1;

    .prologue
    .line 1130
    invoke-direct {p0, p1}, <init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1141
    iget-object v0, p0, this$0:Landroid/widget/ListView;

    iget v1, p0, mPosition:I

    iget v2, p0, mPositionTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1142
    return-void
.end method

.method public setup(II)Landroid/widget/ListView$FocusSelector;
    .registers 3
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1135
    iput p1, p0, mPosition:I

    .line 1136
    iput p2, p0, mPositionTop:I

    .line 1137
    return-object p0
.end method
