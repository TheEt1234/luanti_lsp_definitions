---@meta

-- cspell:words luaobj pova

---@param name string?
---@return boolean
function core.is_creative_enabled(name) end

---@param spec SimpleSoundSpec
---@param parameters sound_params
---@param ephemeral boolean?
---@return sound_handle?
function core.sound_play(spec, parameters, ephemeral) end

---@class NodeDef
---@field alpha? integer
---@field next_plant? string
---@field fertility? string[]
---@field can_grow? fun(pos:vector):boolean
---@field minlight? integer
---@field maxlight? integer
---@field on_burn? fun(pos:vector)
---@field replace_name? string
---@field drops? table
---@field on_ignite? fun(pos:vector, user:ObjectRef?)

---@class ItemDef
---@field soil? {wet: string, dry: string}
---@field _tnt_loss? integer

---@class EntityDef
---@field on_blast? fun(luaobj:luaentity, damage:number)

---@class luaentity
---@field collect? boolean

---@param pos vector
---@param nodename string
function spawn_falling_node(pos, nodename) end

player_monoids = {}
pova = {}

player_api = {}

---@param ... any
function player_api.globalstep(...) end