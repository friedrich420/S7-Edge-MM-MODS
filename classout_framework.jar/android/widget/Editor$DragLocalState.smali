.class Landroid/widget/Editor$DragLocalState;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragLocalState"
.end annotation


# instance fields
.field public end:I

.field public sourceTextView:Landroid/widget/TextView;

.field public start:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .registers 4
    .param p1, "sourceTextView"    # Landroid/widget/TextView;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 2339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2340
    iput-object p1, p0, sourceTextView:Landroid/widget/TextView;

    .line 2341
    iput p2, p0, start:I

    .line 2342
    iput p3, p0, end:I

    .line 2343
    return-void
.end method
