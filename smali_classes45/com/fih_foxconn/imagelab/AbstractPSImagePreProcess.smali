.class public abstract Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
.super Ljava/lang/Object;
.source "AbstractPSImagePreProcess.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_JAVA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;->TAG:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;->mIsSupported:Z

    .line 10
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSInit;->init()V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;->nativeSetFace(IIII)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract doPSImagePreprocess(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
.end method

.method public getFace()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .local v0, "face":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;->nativeGetFace(Landroid/graphics/Rect;)V

    .line 28
    return-object v0
.end method

.method protected native nativeDoPSImagePreprocess([I[FIII)V
.end method

.method protected native nativeGetFace(Landroid/graphics/Rect;)V
.end method

.method protected native nativeSetFace(IIII)V
.end method

.method public setFace(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;->nativeSetFace(IIII)V

    .line 22
    return-void
.end method
