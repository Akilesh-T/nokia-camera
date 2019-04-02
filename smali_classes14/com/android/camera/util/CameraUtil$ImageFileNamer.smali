.class Lcom/android/camera/util/CameraUtil$ImageFileNamer;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private final mBurstIndexFormator:Ljava/text/DecimalFormat;

.field private final mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##00000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mBurstIndexFormator:Ljava/text/DecimalFormat;

    .line 1187
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 1188
    return-void
.end method


# virtual methods
.method public generateBurstFolderName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateBurstImgName(J)Ljava/lang/String;
    .locals 13
    .param p1, "dateTaken"    # J

    .prologue
    const-wide/16 v10, 0x3e8

    .line 1212
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1213
    .local v3, "date":Ljava/util/Date;
    iget-object v5, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1217
    .local v4, "result":Ljava/lang/String;
    div-long v6, p1, v10

    iget-wide v8, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    div-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 1218
    iget v5, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    .line 1224
    :goto_0
    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 1226
    .local v0, "FIRST_UNDER_LINE_INDEX":I
    iget-object v5, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mBurstIndexFormator:Ljava/text/DecimalFormat;

    iget v6, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 1227
    .local v2, "burst_index_str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_BURST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1220
    .end local v0    # "FIRST_UNDER_LINE_INDEX":I
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "burst_index_str":Ljava/lang/String;
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    .line 1221
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method

.method public generateName(J)Ljava/lang/String;
    .locals 9
    .param p1, "dateTaken"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1191
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1192
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "result":Ljava/lang/String;
    div-long v2, p1, v6

    iget-wide v4, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1197
    iget v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1204
    :goto_0
    return-object v1

    .line 1200
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mLastDate:J

    .line 1201
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
