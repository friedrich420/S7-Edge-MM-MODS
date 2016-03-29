.class public final Lcom/android/settings/handwritingsearch/ResourceManagerContract;
.super Ljava/lang/Object;
.source "ResourceManagerContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/handwritingsearch/ResourceManagerContract$Langs;
    }
.end annotation


# static fields
.field private static mAuthority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.myscript.atk.rmc"

    sput-object v0, Lcom/android/settings/handwritingsearch/ResourceManagerContract;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public static final getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/settings/handwritingsearch/ResourceManagerContract;->mAuthority:Ljava/lang/String;

    return-object v0
.end method
