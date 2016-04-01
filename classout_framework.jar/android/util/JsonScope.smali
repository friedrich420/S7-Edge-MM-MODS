.class final enum Landroid/util/JsonScope;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/JsonScope;

.field public static final enum CLOSED:Landroid/util/JsonScope;

.field public static final enum DANGLING_NAME:Landroid/util/JsonScope;

.field public static final enum EMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum EMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum EMPTY_OBJECT:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_OBJECT:Landroid/util/JsonScope;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, EMPTY_ARRAY:Landroid/util/JsonScope;

    .line 34
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, NONEMPTY_ARRAY:Landroid/util/JsonScope;

    .line 40
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, EMPTY_OBJECT:Landroid/util/JsonScope;

    .line 46
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, DANGLING_NAME:Landroid/util/JsonScope;

    .line 52
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, NONEMPTY_OBJECT:Landroid/util/JsonScope;

    .line 57
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, EMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 62
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 67
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CLOSED:Landroid/util/JsonScope;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/util/JsonScope;

    sget-object v1, EMPTY_ARRAY:Landroid/util/JsonScope;

    aput-object v1, v0, v3

    sget-object v1, NONEMPTY_ARRAY:Landroid/util/JsonScope;

    aput-object v1, v0, v4

    sget-object v1, EMPTY_OBJECT:Landroid/util/JsonScope;

    aput-object v1, v0, v5

    sget-object v1, DANGLING_NAME:Landroid/util/JsonScope;

    aput-object v1, v0, v6

    sget-object v1, NONEMPTY_OBJECT:Landroid/util/JsonScope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, EMPTY_DOCUMENT:Landroid/util/JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, CLOSED:Landroid/util/JsonScope;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Landroid/util/JsonScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/JsonScope;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Landroid/util/JsonScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method public static values()[Landroid/util/JsonScope;
    .registers 1

    .prologue
    .line 22
    sget-object v0, $VALUES:[Landroid/util/JsonScope;

    invoke-virtual {v0}, [Landroid/util/JsonScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/JsonScope;

    return-object v0
.end method
