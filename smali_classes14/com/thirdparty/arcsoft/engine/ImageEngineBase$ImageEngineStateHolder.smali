.class public Lcom/thirdparty/arcsoft/engine/ImageEngineBase$ImageEngineStateHolder;
.super Lcom/thirdparty/arcsoft/engine/EngineStateHolder;
.source "ImageEngineBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageEngineStateHolder"
.end annotation


# static fields
.field public static final ENGINE_ABORT:I = 0x80

.field public static final ENGINE_ERROR:I = 0x4

.field public static final ENGINE_NOT_INIT:I = 0x1

.field public static final ENGINE_PROCESSING_INPUT:I = 0x8

.field public static final ENGINE_PROCESSING_RESULT:I = 0x20

.field public static final ENGINE_READY:I = 0x2

.field public static final ENGINE_READY_FOR_RESULT:I = 0x10

.field public static final ENGINE_RELEASED:I = 0x100

.field public static final ENGINE_RESULT_DONE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;-><init>(I)V

    .line 54
    return-void
.end method
