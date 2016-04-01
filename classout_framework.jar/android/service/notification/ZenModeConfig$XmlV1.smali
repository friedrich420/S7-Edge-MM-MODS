.class public final Landroid/service/notification/ZenModeConfig$XmlV1;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlV1"
.end annotation


# static fields
.field private static final EXIT_CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final EXIT_CONDITION_TAG:Ljava/lang/String; = "exitCondition"

.field private static final SLEEP_ATT_END_HR:Ljava/lang/String; = "endHour"

.field private static final SLEEP_ATT_END_MIN:Ljava/lang/String; = "endMin"

.field private static final SLEEP_ATT_MODE:Ljava/lang/String; = "mode"

.field private static final SLEEP_ATT_NONE:Ljava/lang/String; = "none"

.field private static final SLEEP_ATT_START_HR:Ljava/lang/String; = "startHour"

.field private static final SLEEP_ATT_START_MIN:Ljava/lang/String; = "startMin"

.field public static final SLEEP_MODE_DAYS_PREFIX:Ljava/lang/String; = "days:"

.field public static final SLEEP_MODE_NIGHTS:Ljava/lang/String; = "nights"

.field public static final SLEEP_MODE_WEEKNIGHTS:Ljava/lang/String; = "weeknights"

.field private static final SLEEP_TAG:Ljava/lang/String; = "sleep"


# instance fields
.field public allowAlarms:Z

.field public allowCalls:Z

.field public allowEvents:Z

.field public allowFrom:I

.field public allowMessages:Z

.field public allowReminders:Z

.field public applyDowntime:Z

.field public conditionComponents:[Landroid/content/ComponentName;

.field public conditionIds:[Landroid/net/Uri;

.field public exitCondition:Landroid/service/notification/Condition;

.field public exitConditionComponent:Landroid/content/ComponentName;

.field public sleepEndHour:I

.field public sleepEndMinute:I

.field public sleepMode:Ljava/lang/String;

.field public sleepNone:Z

.field public sleepStartHour:I

.field public sleepStartMinute:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    iput-boolean v1, p0, allowReminders:Z

    .line 1175
    iput-boolean v1, p0, allowEvents:Z

    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, allowAlarms:Z

    .line 1178
    iput-boolean v1, p0, applyDowntime:Z

    .line 1180
    iput v1, p0, allowFrom:I

    return-void
.end method

.method private static isValidSleepMode(Ljava/lang/String;)Z
    .registers 2
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    .line 1194
    if-eqz p0, :cond_1a

    const-string/jumbo v0, "nights"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "weeknights"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;
    .registers 16
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    new-instance v7, Landroid/service/notification/ZenModeConfig$XmlV1;

    invoke-direct {v7}, <init>()V

    .line 1213
    .local v7, "rt":Landroid/service/notification/ZenModeConfig$XmlV1;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1214
    .local v1, "conditionComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v3, "conditionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_f
    :goto_f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_162

    .line 1216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1217
    .local v10, "tag":Ljava/lang/String;
    const/4 v12, 0x3

    if-ne v11, v12, :cond_49

    const-string/jumbo v12, "zen"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    .line 1218
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_48

    .line 1219
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/ComponentName;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/ComponentName;

    iput-object v12, v7, conditionComponents:[Landroid/content/ComponentName;

    .line 1221
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/net/Uri;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/net/Uri;

    iput-object v12, v7, conditionIds:[Landroid/net/Uri;

    .line 1223
    :cond_48
    return-object v7

    .line 1225
    :cond_49
    const/4 v12, 0x2

    if-ne v11, v12, :cond_f

    .line 1226
    const-string v12, "allow"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 1227
    const-string v12, "calls"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, allowCalls:Z

    .line 1228
    const-string/jumbo v12, "messages"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, allowMessages:Z

    .line 1229
    const-string/jumbo v12, "reminders"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, allowReminders:Z

    .line 1231
    const-string v12, "events"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, allowEvents:Z

    .line 1234
    const-string v12, "alarms"

    const/4 v13, 0x1

    # invokes: Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, allowAlarms:Z

    .line 1235
    const-string v12, "applydowntime"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, applyDowntime:Z

    .line 1237
    const-string v12, "from"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$500(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v7, allowFrom:I

    .line 1238
    iget v12, v7, allowFrom:I

    if-ltz v12, :cond_9e

    iget v12, v7, allowFrom:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_f

    .line 1239
    :cond_9e
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad source in config:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, allowFrom:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1242
    :cond_b9
    const-string/jumbo v12, "sleep"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_126

    .line 1243
    const/4 v12, 0x0

    const-string/jumbo v13, "mode"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1244
    .local v6, "mode":Ljava/lang/String;
    invoke-static {v6}, isValidSleepMode(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11c

    .end local v6    # "mode":Ljava/lang/String;
    :goto_d0
    iput-object v6, v7, sleepMode:Ljava/lang/String;

    .line 1245
    const-string/jumbo v12, "none"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v7, sleepNone:Z

    .line 1246
    const-string/jumbo v12, "startHour"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$500(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1247
    .local v8, "startHour":I
    const-string/jumbo v12, "startMin"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$500(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1248
    .local v9, "startMinute":I
    const-string v12, "endHour"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$500(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 1249
    .local v4, "endHour":I
    const-string v12, "endMin"

    const/4 v13, 0x0

    # invokes: Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->access$500(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1250
    .local v5, "endMinute":I
    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v12

    if-eqz v12, :cond_11e

    .end local v8    # "startHour":I
    :goto_100
    iput v8, v7, sleepStartHour:I

    .line 1251
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v12

    if-eqz v12, :cond_120

    .end local v9    # "startMinute":I
    :goto_108
    iput v9, v7, sleepStartMinute:I

    .line 1252
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v12

    if-eqz v12, :cond_122

    .end local v4    # "endHour":I
    :goto_110
    iput v4, v7, sleepEndHour:I

    .line 1253
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v12

    if-eqz v12, :cond_124

    .end local v5    # "endMinute":I
    :goto_118
    iput v5, v7, sleepEndMinute:I

    goto/16 :goto_f

    .line 1244
    .restart local v6    # "mode":Ljava/lang/String;
    :cond_11c
    const/4 v6, 0x0

    goto :goto_d0

    .line 1250
    .end local v6    # "mode":Ljava/lang/String;
    .restart local v4    # "endHour":I
    .restart local v5    # "endMinute":I
    .restart local v8    # "startHour":I
    .restart local v9    # "startMinute":I
    :cond_11e
    const/4 v8, 0x0

    goto :goto_100

    .line 1251
    .end local v8    # "startHour":I
    :cond_120
    const/4 v9, 0x0

    goto :goto_108

    .line 1252
    .end local v9    # "startMinute":I
    :cond_122
    const/4 v4, 0x0

    goto :goto_110

    .line 1253
    .end local v4    # "endHour":I
    :cond_124
    const/4 v5, 0x0

    goto :goto_118

    .line 1254
    .end local v5    # "endMinute":I
    :cond_126
    const-string v12, "condition"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_146

    .line 1255
    const-string v12, "component"

    # invokes: Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->access$600(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1257
    .local v0, "component":Landroid/content/ComponentName;
    const-string v12, "id"

    # invokes: Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->access$700(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1258
    .local v2, "conditionId":Landroid/net/Uri;
    if-eqz v0, :cond_f

    if-eqz v2, :cond_f

    .line 1259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 1262
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "conditionId":Landroid/net/Uri;
    :cond_146
    const-string v12, "exitCondition"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1263
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v12

    iput-object v12, v7, exitCondition:Landroid/service/notification/Condition;

    .line 1264
    iget-object v12, v7, exitCondition:Landroid/service/notification/Condition;

    if-eqz v12, :cond_f

    .line 1265
    const-string v12, "component"

    # invokes: Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->access$600(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    iput-object v12, v7, exitConditionComponent:Landroid/content/ComponentName;

    goto/16 :goto_f

    .line 1271
    .end local v10    # "tag":Ljava/lang/String;
    :cond_162
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Failed to reach END_DOCUMENT"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static tryParseDays(Ljava/lang/String;)[I
    .registers 3
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1199
    if-nez p0, :cond_4

    .line 1205
    :cond_3
    :goto_3
    return-object v0

    .line 1200
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1201
    const-string/jumbo v1, "nights"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    goto :goto_3

    .line 1202
    :cond_14
    const-string/jumbo v1, "weeknights"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    goto :goto_3

    .line 1203
    :cond_20
    const-string v1, "days:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1204
    const-string v1, "days:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1205
    const-string v0, "days:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    # invokes: Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->access$300(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_3
.end method
