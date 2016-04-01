.class public Lcom/sec/epdg/mapcon/MapconConstants;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;,
        Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;,
        Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;,
        Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;,
        Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;,
        Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;,
        Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;,
        Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;,
        Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;
    }
.end annotation


# static fields
.field public static final COLUMN_APN_TYPE:Ljava/lang/String; = "apntype"

.field public static final COLUMN_IPFLOW_AFFECT_APN:Ljava/lang/String; = "affectapn"

.field public static final COLUMN_IPFLOW_ROUTING_RULE:Ljava/lang/String; = "routingrule"

.field public static final COLUMN_IPFLOW_RULE:Ljava/lang/String; = "ipflowrule"

.field public static final COLUMN_IPFLOW_TYPE:Ljava/lang/String; = "ipflowtype"

.field public static final COLUMN_RAT_PREF_ORDER:Ljava/lang/String; = "ratpreforder"

.field public static final CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

.field public static final CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

.field public static final IPFLOW_TYPE_APPLICATION:Ljava/lang/String; = "apps"

.field public static final SEPERATOR:Ljava/lang/String; = ":"

.field public static final TAG:Ljava/lang/String; = "[MAPCON]"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "content://mapconprovider/mapcon/mapcontable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    .line 365
    const-string v0, "content://mapconprovider/mapcon/ifomtable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    return-void
.end method
