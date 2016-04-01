.class public final enum Landroid/text/TextUtils$TruncateAt;
.super Ljava/lang/Enum;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TruncateAt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/TextUtils$TruncateAt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/TextUtils$TruncateAt;

.field public static final enum END:Landroid/text/TextUtils$TruncateAt;

.field public static final enum END_SMALL:Landroid/text/TextUtils$TruncateAt;

.field public static final enum KEYWORD:Landroid/text/TextUtils$TruncateAt;

.field public static final enum MARQUEE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum MIDDLE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum START:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1051
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, START:Landroid/text/TextUtils$TruncateAt;

    .line 1052
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 1053
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, END:Landroid/text/TextUtils$TruncateAt;

    .line 1054
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "MARQUEE"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 1058
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "END_SMALL"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 1063
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "KEYWORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, KEYWORD:Landroid/text/TextUtils$TruncateAt;

    .line 1050
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/text/TextUtils$TruncateAt;

    sget-object v1, START:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v3

    sget-object v1, MIDDLE:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v4

    sget-object v1, END:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v5

    sget-object v1, MARQUEE:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v6

    sget-object v1, END_SMALL:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, KEYWORD:Landroid/text/TextUtils$TruncateAt;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Landroid/text/TextUtils$TruncateAt;

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
    .line 1050
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1050
    const-class v0, Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public static values()[Landroid/text/TextUtils$TruncateAt;
    .registers 1

    .prologue
    .line 1050
    sget-object v0, $VALUES:[Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, [Landroid/text/TextUtils$TruncateAt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method
