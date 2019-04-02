.class public Lcom/sina/sinalivesdk/util/WBIMLiveLog;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_CLOCK_PROOF_GAP:Ljava/lang/String; = "key_clock_proof_gap"

.field public static final KEY_CLOCK_PROOF_STATUS:Ljava/lang/String; = "key_clock_proof_status"

.field public static final SP_NAME:Ljava/lang/String; = "weibo_live_sdk_sp"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/util/f;->a:Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    return-object v0
.end method


# virtual methods
.method public canRecord()Z
    .locals 6

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClockEclipse()J
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->e:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->e:Landroid/content/Context;

    const-string v3, "weibo_live_sdk_sp"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_clock_proof_status"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "key_clock_proof_gap"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getResponseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->b:J

    return-wide v0
.end method

.method public getSendTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->a:J

    return-wide v0
.end method

.method public getServerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->c:J

    return-wide v0
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->e:Landroid/content/Context;

    return-void
.end method

.method public record()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->e:Landroid/content/Context;

    const-string v1, "weibo_live_sdk_sp"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v2, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->b:J

    iget-wide v4, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->c:J

    iget-wide v4, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->b:J

    sub-long/2addr v2, v4

    const-string v1, "key_clock_proof_status"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_clock_proof_gap"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->d:J

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v1, "key_clock_proof_status"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setResponseTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->b:J

    return-void
.end method

.method public setSendTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->a:J

    return-void
.end method

.method public setServerTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->c:J

    return-void
.end method
