.class synthetic Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;
.super Ljava/lang/Object;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

.field static final synthetic $SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetSide:[I

.field static final synthetic $SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 660
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->SWIPE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    .line 347
    :goto_2
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    :try_start_3
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    .line 259
    :goto_5
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetSide:[I

    :try_start_6
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetSide:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->LEFT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetSide:[I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->RIGHT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    .line 347
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    .line 660
    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
