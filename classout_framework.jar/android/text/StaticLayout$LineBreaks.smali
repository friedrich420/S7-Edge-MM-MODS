.class Landroid/text/StaticLayout$LineBreaks;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineBreaks"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10


# instance fields
.field public breaks:[I

.field public flags:[I

.field public widths:[F


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x10

    .line 2026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    new-array v0, v1, [I

    iput-object v0, p0, breaks:[I

    .line 2029
    new-array v0, v1, [F

    iput-object v0, p0, widths:[F

    .line 2030
    new-array v0, v1, [I

    iput-object v0, p0, flags:[I

    return-void
.end method
