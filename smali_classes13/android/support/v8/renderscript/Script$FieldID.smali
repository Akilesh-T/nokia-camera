.class public final Landroid/support/v8/renderscript/Script$FieldID;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldID"
.end annotation


# instance fields
.field mN:Landroid/renderscript/Script$FieldID;

.field mScript:Landroid/support/v8/renderscript/Script;

.field mSlot:I


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p4, "s"    # Landroid/support/v8/renderscript/Script;
    .param p5, "slot"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 159
    iput-object p4, p0, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;

    .line 160
    iput p5, p0, Landroid/support/v8/renderscript/Script$FieldID;->mSlot:I

    .line 161
    return-void
.end method
