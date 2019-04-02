.class final Lcom/android/camera/util/DebugYuvDumpUtil$1;
.super Ljava/lang/Thread;
.source "DebugYuvDumpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:[B

.field final synthetic val$fHeight:I

.field final synthetic val$fWidth:I

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(I[BILjava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$fWidth:I

    iput-object p2, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$data:[B

    iput p3, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$fHeight:I

    iput-object p4, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 33
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getAlignmentWidth()D

    move-result-wide v0

    .line 34
    .local v0, "align":D
    iget v4, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$fWidth:I

    int-to-double v4, v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    double-to-int v5, v0

    mul-int v2, v4, v5

    .line 35
    .local v2, "alignW":I
    iget-object v4, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$data:[B

    iget v5, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$fWidth:I

    iget v6, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$fHeight:I

    invoke-static {v4, v5, v6, v2}, Lcom/android/camera/util/DebugYuvDumpUtil;->getYuvData([BIII)[B

    move-result-object v3

    .line 36
    .local v3, "newData":[B
    iget-object v4, p0, Lcom/android/camera/util/DebugYuvDumpUtil$1;->val$fileName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpNV21([BLjava/lang/String;)V

    .line 37
    return-void
.end method
