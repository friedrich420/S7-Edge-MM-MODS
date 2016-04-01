.class public Landroid/renderscript/RenderScriptCacheDir;
.super Ljava/lang/Object;
.source "RenderScriptCacheDir.java"


# static fields
.field static mCacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .registers 1
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 35
    sput-object p0, mCacheDir:Ljava/io/File;

    .line 36
    return-void
.end method
