.class public final Lcom/kddi/android/internal/pdg/PDG$WhiteList;
.super Ljava/lang/Object;
.source "PDG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/pdg/PDG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WhiteList"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_READ_ONLY:Landroid/net/Uri;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final WHITE_LIST:Ljava/lang/String; = "white_list"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "content://com.kddi.android.pdg/white_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://com.kddi.android.pdg.read_only/white_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
