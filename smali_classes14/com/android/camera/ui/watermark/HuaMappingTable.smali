.class public Lcom/android/camera/ui/watermark/HuaMappingTable;
.super Ljava/lang/Object;
.source "HuaMappingTable.java"

# interfaces
.implements Lcom/android/camera/ui/watermark/MappingTable;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static mInstance:Lcom/android/camera/ui/watermark/HuaMappingTable;


# instance fields
.field private mWeatherIconArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "HuaMappingTable"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/HuaMappingTable;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/ui/watermark/HuaMappingTable;->mInstance:Lcom/android/camera/ui/watermark/HuaMappingTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x3b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/watermark/HuaMappingTable;->mWeatherIconArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020000
        0x7f020001
        0x7f020002
        0x7f020003
        0x7f020004
        0x7f020005
        0x7f020006
        0x7f020007
        0x7f020008
        0x7f020008
        0x7f020009
        0x7f020009
        0x7f020009
        0x7f02000a
        0x7f02000b
        0x7f02000b
        0x7f02000c
        0x7f02000c
        0x7f02000d
        0x7f02000e
        0x7f02000f
        0x7f020007
        0x7f020008
        0x7f020009
        0x7f020009
        0x7f020009
        0x7f02000b
        0x7f02000c
        0x7f02000c
        0x7f020010
        0x7f020011
        0x7f02000f
        0x7f020012
        0x7f020013
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7f020012
        -0x1
        -0x1
        -0x1
        0x7f020014
        0x7f020015
        0x7f020015
        0x7f020015
        0x7f02000d
        0x7f020012
    .end array-data
.end method

.method public static getInstance()Lcom/android/camera/ui/watermark/HuaMappingTable;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/camera/ui/watermark/HuaMappingTable;->mInstance:Lcom/android/camera/ui/watermark/HuaMappingTable;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/camera/ui/watermark/HuaMappingTable;

    invoke-direct {v0}, Lcom/android/camera/ui/watermark/HuaMappingTable;-><init>()V

    sput-object v0, Lcom/android/camera/ui/watermark/HuaMappingTable;->mInstance:Lcom/android/camera/ui/watermark/HuaMappingTable;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/camera/ui/watermark/HuaMappingTable;->mInstance:Lcom/android/camera/ui/watermark/HuaMappingTable;

    return-object v0
.end method


# virtual methods
.method public getConditionMapIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v1, -0x1

    .line 66
    .local v1, "iCond":I
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
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

    .line 80
    .end local v1    # "iCond":I
    :cond_3
    :goto_1
    return v1

    .line 69
    .restart local v1    # "iCond":I
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/camera/ui/watermark/HuaMappingTable;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getWeatherIconId(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 85
    sget-object v1, Lcom/android/camera/ui/watermark/HuaMappingTable;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 86
    const v0, 0x7f020320

    .line 87
    .local v0, "resId":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/watermark/HuaMappingTable;->mWeatherIconArray:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/camera/ui/watermark/HuaMappingTable;->mWeatherIconArray:[I

    aget v0, v1, p1

    .line 90
    :cond_0
    return v0
.end method
