.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvMetaValueType;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlvMetaValueType"
.end annotation


# static fields
.field public static final BooleanType:I = 0x1

.field public static final DateType:I = 0xb

.field public static final ECMAArrayType:I = 0x8

.field public static final LongStringType:I = 0xc

.field public static final MovieClipType:I = 0x4

.field public static final NullType:I = 0x5

.field public static final NumberType:I = 0x0

.field public static final ObjectType:I = 0x3

.field public static final ReferenceType:I = 0x7

.field public static final StrictArrayType:I = 0xa

.field public static final StringType:I = 0x2

.field public static final UndefinedType:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvMetaValueType;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
