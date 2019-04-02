.class Lnet/lingala/zip4j/unzip/Unzip$3;
.super Ljava/lang/Thread;
.source "Unzip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lingala/zip4j/unzip/Unzip;->extractFiles(Ljava/util/ArrayList;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/lingala/zip4j/unzip/Unzip;

.field private final synthetic val$fileHeaders:Ljava/util/ArrayList;

.field private final synthetic val$outPath:Ljava/lang/String;

.field private final synthetic val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final synthetic val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    iput-object p3, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$fileHeaders:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    iput-object p5, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iput-object p6, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$outPath:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$fileHeaders:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-object v4, p0, Lnet/lingala/zip4j/unzip/Unzip$3;->val$outPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/unzip/Unzip;->access$0(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method
