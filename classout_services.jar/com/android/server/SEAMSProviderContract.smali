.class public final Lcom/android/server/SEAMSProviderContract;
.super Ljava/lang/Object;
.source "SEAMSProviderContract.java"


# static fields
.field static final CONTENT_URI_SERVICE_KEEPER:Landroid/net/Uri;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.seams.provider"

.field static final SERVICEKEEPER_ISAUTHORIZED_METHOD:Ljava/lang/String; = "isAuthorized"

.field public static final SERVICE_KEEPER:Ljava/lang/String; = "ServiceKeeper"

.field public static final URL:Ljava/lang/String; = "content://com.sec.seams.provider"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "content://com.sec.seams.provider/ServiceKeeper"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI_SERVICE_KEEPER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
