.class public Lcom/android/camera/ui/TouchCoordinate;
.super Ljava/lang/Object;
.source "TouchCoordinate.java"


# instance fields
.field private maxX:F

.field private maxY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "maxX"    # F
    .param p4, "maxY"    # F

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/camera/ui/TouchCoordinate;->x:F

    .line 37
    iput p2, p0, Lcom/android/camera/ui/TouchCoordinate;->y:F

    .line 38
    iput p3, p0, Lcom/android/camera/ui/TouchCoordinate;->maxX:F

    .line 39
    iput p4, p0, Lcom/android/camera/ui/TouchCoordinate;->maxY:F

    .line 40
    return-void
.end method


# virtual methods
.method public getMaxX()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/ui/TouchCoordinate;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ui/TouchCoordinate;->maxY:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/camera/ui/TouchCoordinate;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/ui/TouchCoordinate;->y:F

    return v0
.end method
