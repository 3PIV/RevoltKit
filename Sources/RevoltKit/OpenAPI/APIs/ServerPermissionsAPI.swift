//
// ServerPermissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ServerPermissionsAPI {

    /**
     Set Default Permission
     
     - parameter server: (path) Server ID 
     - parameter inlineObject26Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerPermissionsDefaultPut(server: IdModel, inlineObject26Model: ServersServerPermissionsSetDefaultPermissionModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerPermissionsDefaultPutWithRequestBuilder(server: server, inlineObject26Model: inlineObject26Model).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set Default Permission
     - PUT /servers/:server/permissions/default
     - Sets permissions for the default role in this server.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter inlineObject26Model: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerPermissionsDefaultPutWithRequestBuilder(server: IdModel, inlineObject26Model: ServersServerPermissionsSetDefaultPermissionModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/permissions/default"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineObject26Model)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Set Role Permission
     
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter inlineObject25Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerPermissionsRolePut(server: IdModel, role: IdModel, inlineObject25Model: ServersServerPermissionsSetRolePermissionModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerPermissionsRolePutWithRequestBuilder(server: server, role: role, inlineObject25Model: inlineObject25Model).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set Role Permission
     - PUT /servers/:server/permissions/:role
     - Sets permissions for the specified role in this server.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter inlineObject25Model: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerPermissionsRolePutWithRequestBuilder(server: IdModel, role: IdModel, setRolePermissionModel: ServersServerPermissionsSetRolePermissionModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/permissions/:role"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let rolePreEscape = "\(APIHelper.mapValueToPathItem(role))"
        let rolePostEscape = rolePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{role}", with: rolePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setRolePermissionModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Role
     
     - parameter server: (path) Server ID 
     - parameter inlineObject27Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerRolesPost(server: IdModel, persmissionCreateRoleModel: ServersServerPermissionsCreateRoleModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: ServersServerPermissionsCreateRoleResponseModel?, _ error: Error?) -> Void)) {
        serversServerRolesPostWithRequestBuilder(server: server, inlineObject27Model: persmissionCreateRoleModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Role
     - POST /servers/:server/roles
     - Creates a new server role.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter inlineObject27Model: (body)  (optional)
     - returns: RequestBuilder<InlineResponse2006Model> 
     */
    open class func serversServerRolesPostWithRequestBuilder(server: IdModel, permissionsCreateRoleModel: ServersServerPermissionsCreateRoleModel? = nil) -> RequestBuilder<ServersServerPermissionsCreateRoleResponseModel> {
        var localVariablePath = "/servers/:server/roles"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: permissionsCreateRoleModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServersServerPermissionsCreateRoleResponseModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Role
     
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerRolesRoleDelete(server: IdModel, role: IdModel, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerRolesRoleDeleteWithRequestBuilder(server: server, role: role).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Role
     - DELETE /servers/:server/roles/:role
     - Deletes a server role by ID.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerRolesRoleDeleteWithRequestBuilder(server: IdModel, role: IdModel) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/roles/:role"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let rolePreEscape = "\(APIHelper.mapValueToPathItem(role))"
        let rolePostEscape = rolePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{role}", with: rolePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Edit Role
     
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter UNKNOWN_BASE_TYPE: (body) Requested changes to role object. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerRolesRolePatch(server: IdModel, role: IdModel, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerRolesRolePatchWithRequestBuilder(server: server, role: role, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Edit Role
     - PATCH /servers/:server/roles/:role
     - Edit a role object.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter UNKNOWN_BASE_TYPE: (body) Requested changes to role object. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerRolesRolePatchWithRequestBuilder(server: IdModel, role: IdModel, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/roles/:role"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let rolePreEscape = "\(APIHelper.mapValueToPathItem(role))"
        let rolePostEscape = rolePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{role}", with: rolePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}