.class Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;
.super Ljava/lang/Object;
.source "BurstResultsSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstResultsSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialTimestampGenerator"
.end annotation


# instance fields
.field private mSeedTimestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "seedTimestampMillis"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;->mSeedTimestampMillis:J

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized getNextTimestampMillis()J
    .locals 6

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;->mSeedTimestampMillis:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;->mSeedTimestampMillis:J

    .line 64
    iget-wide v0, p0, Lcom/android/camera/burst/BurstResultsSaver$SequentialTimestampGenerator;->mSeedTimestampMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
