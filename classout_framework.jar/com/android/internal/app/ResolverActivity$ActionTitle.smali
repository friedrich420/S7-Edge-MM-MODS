.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const v10, 0x1040364

    const v9, 0x1040363

    .line 251
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v1, "VIEW"

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x104035f

    const v5, 0x1040360

    invoke-direct/range {v0 .. v5}, <init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 254
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v4, "EDIT"

    const-string v6, "android.intent.action.EDIT"

    const v7, 0x1040361

    const v8, 0x1040362

    move v5, v11

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 257
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v4, "SEND"

    const-string v6, "android.intent.action.SEND"

    move v5, v12

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 260
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v4, "SENDTO"

    const/4 v5, 0x3

    const-string v6, "android.intent.action.SENDTO"

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 263
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v4, "SEND_MULTIPLE"

    const/4 v5, 0x4

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 266
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v4, "DEFAULT"

    const/4 v5, 0x5

    const/4 v6, 0x0

    const v7, 0x104035d

    const v8, 0x104035e

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 269
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v4, "HOME"

    const/4 v5, 0x6

    const-string v6, "android.intent.action.MAIN"

    const v7, 0x1040365

    const v8, 0x1040366

    invoke-direct/range {v3 .. v8}, <init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 250
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v1, VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v2

    sget-object v1, EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v11

    sget-object v1, SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v12

    const/4 v1, 0x3

    sget-object v2, SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 278
    iput-object p3, p0, action:Ljava/lang/String;

    .line 279
    iput p4, p0, titleRes:I

    .line 280
    iput p5, p0, namedTitleRes:I

    .line 281
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 6
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {}, values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 285
    .local v3, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    sget-object v4, HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_19

    if-eqz p0, :cond_19

    iget-object v4, v3, action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 289
    .end local v3    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_18
    return-object v3

    .line 284
    .restart local v3    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 289
    .end local v3    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1c
    sget-object v3, DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    goto :goto_18
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 250
    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 1

    .prologue
    .line 250
    sget-object v0, $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
