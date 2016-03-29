.class Lcom/android/settings/applock/PackageInfoUtil$PackageUtilHolder;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/PackageInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageUtilHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/settings/applock/PackageInfoUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/settings/applock/PackageInfoUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/applock/PackageInfoUtil;-><init>(Lcom/android/settings/applock/PackageInfoUtil$1;)V

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$PackageUtilHolder;->INSTANCE:Lcom/android/settings/applock/PackageInfoUtil;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/applock/PackageInfoUtil;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings/applock/PackageInfoUtil$PackageUtilHolder;->INSTANCE:Lcom/android/settings/applock/PackageInfoUtil;

    return-object v0
.end method
