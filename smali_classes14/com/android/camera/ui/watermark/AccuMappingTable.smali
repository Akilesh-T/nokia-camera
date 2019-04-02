.class public Lcom/android/camera/ui/watermark/AccuMappingTable;
.super Ljava/lang/Object;
.source "AccuMappingTable.java"

# interfaces
.implements Lcom/android/camera/ui/watermark/MappingTable;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static mInstance:Lcom/android/camera/ui/watermark/AccuMappingTable;


# instance fields
.field private mWeatherIconArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AccuMappingTable"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/AccuMappingTable;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/ui/watermark/AccuMappingTable;->mInstance:Lcom/android/camera/ui/watermark/AccuMappingTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x2d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/watermark/AccuMappingTable;->mWeatherIconArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020320
        0x7f020321
        0x7f020322
        0x7f020323
        0x7f020324
        0x7f020325
        0x7f020326
        0x7f020327
        0x7f020328
        0x7f020320
        0x7f020320
        0x7f020329
        0x7f02032a
        0x7f02032b
        0x7f02032c
        0x7f02032d
        0x7f02032e
        0x7f02032f
        0x7f020330
        0x7f020331
        0x7f020332
        0x7f020333
        0x7f020334
        0x7f020335
        0x7f020336
        0x7f020337
        0x7f020338
        0x7f020320
        0x7f020320
        0x7f020339
        0x7f02033a
        0x7f02033b
        0x7f02033c
        0x7f02033d
        0x7f02033e
        0x7f02033f
        0x7f020340
        0x7f020341
        0x7f020342
        0x7f020343
        0x7f020344
        0x7f020345
        0x7f020346
        0x7f020347
        0x7f020348
    .end array-data
.end method

.method public static getInstance()Lcom/android/camera/ui/watermark/AccuMappingTable;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/camera/ui/watermark/AccuMappingTable;->mInstance:Lcom/android/camera/ui/watermark/AccuMappingTable;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/camera/ui/watermark/AccuMappingTable;

    invoke-direct {v0}, Lcom/android/camera/ui/watermark/AccuMappingTable;-><init>()V

    sput-object v0, Lcom/android/camera/ui/watermark/AccuMappingTable;->mInstance:Lcom/android/camera/ui/watermark/AccuMappingTable;

    .line 129
    :cond_0
    sget-object v0, Lcom/android/camera/ui/watermark/AccuMappingTable;->mInstance:Lcom/android/camera/ui/watermark/AccuMappingTable;

    return-object v0
.end method


# virtual methods
.method public getConditionMapIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v1, -0x1

    .line 134
    .local v1, "iCond":I
    if-eqz p1, :cond_0

    .line 136
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    :cond_1
    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x1c

    if-le v1, v2, :cond_4

    const/16 v2, 0x2d

    if-ge v1, v2, :cond_4

    .line 148
    .end local v1    # "iCond":I
    :cond_3
    :goto_1
    return v1

    .line 137
    .restart local v1    # "iCond":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/camera/ui/watermark/AccuMappingTable;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConditionMapIndex ERROR => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getWeatherIconId(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 153
    sget-object v1, Lcom/android/camera/ui/watermark/AccuMappingTable;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWeatherIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    const v0, 0x7f020320

    .line 155
    .local v0, "resId":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/watermark/AccuMappingTable;->mWeatherIconArray:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/camera/ui/watermark/AccuMappingTable;->mWeatherIconArray:[I

    aget v0, v1, p1

    .line 158
    :cond_0
    return v0
.end method
