.class public Landroid/sec/clipboard/ClipboardExManager$Format;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# static fields
.field public static final ALL:I = 0x1

.field public static final BITMAP:I = 0x3

.field public static final HTML:I = 0x4

.field public static final INTENT:I = 0x6

.field public static final MULTIPLE_TYPE:I = 0x8

.field public static final TEXT:I = 0x2

.field public static final URI:I = 0x5

.field public static final URI_LIST:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
